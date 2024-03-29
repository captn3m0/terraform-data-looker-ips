# terraform-data-looker-ips ![License:MIT](https://img.shields.io/badge/license-MIT-blue.svg) ![GitHub last commit](https://img.shields.io/github/last-commit/captn3m0/terraform-data-looker-ips) ![GitHub Release Date](https://img.shields.io/github/release-date/captn3m0/terraform-data-looker-ips) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/captn3m0/terraform-data-looker-ips)

Looker's IP addresses, as per [their documentation](https://docs.looker.com/setup-and-management/enabling-secure-db).

This module supports all 3 modes of hosting:

- Legacy AWS
- Next generation GCP
- Next generation EKS
- Microsoft Azure

Please make sure to read the Looker documentation before you start using this module.

# Usage

```hcl
module "looker-ips" {
  source  = "captn3m0/looker-ips/data"
  version = "v2.0.9"
}

resource "aws_security_group_rule" "allow_all_from_looker_aws_us" {
  type            = "ingress"
  from_port       = 0
  to_port         = 443
  protocol        = "tcp"
  cidr_blocks     = ["${module.looker-ips.us_cidr}"]
  security_group_id = "sg-123456"
}
```

## Outputs

- All output variables are lists.
- For instances hosted on  "Legacy AWS hosting" is based on 2 letter [ISO country codes][3166] and [common continent codes](https://datahub.io/core/continent-codes#readme).
- For instances hosted on GCP, [the corresponding region codes are used](https://cloud.google.com/compute/docs/regions-zones).
- For instances hosted on EKS, the AWS region code is prefixed with `eks-`.
- For instances hosted on Microsoft Azure, the Azure region code is prefixed with `azure-`.
- Every output variable is available in 2 formats - list of IP addresses, or list of CIDRs. The CIDRs are generated using a `/32` suffix on all IPs.

To pick the correct output variable, check the below and search for the corresponding term the variable description.

1. Instances that are hosted on AWS and that were created before 07/07/2020. - Search for "AWS"
2. Instances that are hosted on Amazon EKS. If your instance is in EKS/`eu-west-1` or EKS/`us-east-1`, you will need to contact Looker support to get your IP range.
3. For default-Looker-hosted instances on GCP. - Search for "GCP"
4. For instances is hosted on Microsoft Azure - Search for Azure.

If you are unsure which region your instance is in, please reach out to Looker support.

## Requirements

Supports Terraform 0.11 and above.

## Outputs

| Name | Description |
|------|-------------|
| all\_cidr | Looker IP addresses everywhere in CIDR (Legacy + GCP + EKS + Azure) |
| all\_ips | Looker IP addresses everywhere (Legacy AWS + GCP + EKS + Azure) |
| as | Legacy Hosting IP Addresses in Asia for instances hosted on AWS that were created before 07/07/2020 |
| as\_cidr | Legacy Hosting CIDR in Asia for instances hosted on AWS that were created before 07/07/2020 |
| au | Legacy Hosting IP Addresses in Australia for instances hosted on AWS that were created before 07/07/2020 |
| au\_cidr | Legacy Hosting CIDR in Australia for instances hosted on AWS that were created before 07/07/2020 |
| aws\_cidr | Legacy Hosting CIDR for all for instances hosted on AWS that were created before 07/07/2020 |
| aws\_ips | Legacy Hosting IP addresses for instances hosted anywhere that were created before 07/07/2020 |
| azure\_cidr | CIDRs for instances hosted on Microsoft Azure across all regions |
| azure\_ips | IP addresses for instances hosted on Microsoft Azure across all regions |
| azure\_us\_east2\_cidr | CIDRs for instances hosted on Microsoft Azure (Virginia, USA / azure-us-east2) |
| azure\_us\_east2\_ips | IP addresses for instances hosted on Microsoft Azure (Virginia, USA / azure-us-east2) |
| ca | Legacy Hosting IP Addresses in Canada for instances hosted on AWS that were created before 07/07/2020 |
| ca\_cidr | Legacy Hosting CIDR in Canada for instances hosted on AWS that were created before 07/07/2020 |
| de | Legacy Hosting IP Addresses in Germany for instances hosted on AWS that were created before 07/07/2020 |
| de\_cidr | Legacy Hosting CIDR in Germany for instances hosted on AWS that were created before 07/07/2020 |
| eks\_ap\_northeast\_1 | IP addresses for instances hosted on Amazon EKS in ap-northeast-1 region. |
| eks\_ap\_northeast\_1\_cidr | CIDRs for instances hosted on Amazon EKS in ap-northeast-1 region |
| eks\_ap\_southeast\_2 | IP addresses for instances hosted on Amazon EKS in ap-southeast-2 region. |
| eks\_ap\_southeast\_2\_cidr | CIDRs for instances hosted on Amazon EKS in ap-southeast-2 region |
| eks\_ca\_central\_1 | IP addresses for instances hosted on Amazon EKS in ca-central-1 region. |
| eks\_ca\_central\_1\_cidr | CIDRs for instances hosted on Amazon EKS in ca-central-1 region |
| eks\_cidr | CIDRs for instances hosted on Amazon EKS across all regions |
| eks\_eu\_central\_1 | IP addresses for instances hosted on Amazon EKS in eu-central-1 region. |
| eks\_eu\_central\_1\_cidr | CIDRs for instances hosted on Amazon EKS in eu-central-1 region |
| eks\_ips | IP addresses for instances hosted on Amazon EKS across all regions |
| eks\_sa\_east\_1 | IP addresses for instances hosted on Amazon EKS in sa-east-1 region. |
| eks\_sa\_east\_1\_cidr | CIDRs for instances hosted on Amazon EKS in sa-east-1 region |
| eks\_us\_east\_2 | IP addresses for instances hosted on Amazon EKS in us-east-2 region. |
| eks\_us\_east\_2\_cidr | CIDRs for instances hosted on Amazon EKS in us-east-2 region |
| eks\_us\_west\_2 | IP addresses for instances hosted on Amazon EKS in us-west-2 region. |
| eks\_us\_west\_2\_cidr | CIDRs for instances hosted on Amazon EKS in us-west-2 region |
| gcp\_asia\_east1\_cidr | CIDRs for instances hosted on GCP (Taiwan / asia-east1) |
| gcp\_asia\_east1\_ips | IP addresses for instances hosted on GCP (Taiwan / asia-east1) |
| gcp\_asia\_northeast1\_cidr | CIDRs for instances hosted on GCP (Tokyo / asia-northeast1) |
| gcp\_asia\_northeast1\_ips | IP addresses for instances hosted on GCP (Tokyo / gcp-asia-northeast1) |
| gcp\_asia\_south1\_cidr | CIDRs for instances hosted on GCP (Mumbai / asia-south1) |
| gcp\_asia\_south\_1\_ips | IP addresses for instances hosted on GCP (Mumbai / asia-south1) |
| gcp\_asia\_southeast1\_cidr | CIDRs for instances hosted on GCP (Singapore / asia-southeast1) |
| gcp\_asia\_southeast1\_ips | IP addresses for instances hosted on GCP (Singapore / asia-southeast1) |
| gcp\_asia\_southeast2\_cidr | CIDRs for instances hosted on GCP (Jakarta / asia-southeast2) |
| gcp\_asia\_southeast2\_ips | IP addresses for instances hosted on GCP (Jakarta / asia-southeast2) |
| gcp\_australia\_southeast1\_cidr | CIDRs for instances hosted on GCP (Sydney / australia-southeast1) |
| gcp\_australia\_southeast1\_ips | IP addresses for instances hosted on GCP (Sydney / australia-southeast1) |
| gcp\_cidr | IP addresses for instances hosted on GCP in any region. |
| gcp\_europe\_west2\_cidr | CIDRs for instances hosted on GCP (London / europe-west2) |
| gcp\_europe\_west2\_ips | IP addresses for instances hosted on GCP (London / europe-west2) |
| gcp\_europe\_west3\_cidr | CIDRs for instances hosted on GCP (Frankfurt / europe-west3) |
| gcp\_europe\_west3\_ips | IP addresses for instances hosted on GCP (Frankfurt / europe-west3) |
| gcp\_europe\_west4\_cidr | CIDRs for instances hosted on GCP (Eemshaven / europe-west4) |
| gcp\_europe\_west4\_ips | IP addresses for instances hosted on GCP (Eemshaven / europe-west4) |
| gcp\_ips | Looker IP addresses everywhere (GCP only). |
| gcp\_northamerica\_northeast1\_cidr | CIDRs for instances hosted on GCP (Canada / Montreal / gcp-northamerica-northeast1) |
| gcp\_northamerica\_northeast1\_ips | IP addresses for instances hosted on GCP (Canada / Montreal / gcp-northamerica-northeast1) |
| gcp\_southamerica\_east1\_cidr | CIDRs for instances hosted on GCP (São Paulo / southamerica-east1) |
| gcp\_southamerica\_east1\_ips | IP addresses for instances hosted on GCP (São Paulo / gcp-southamerica-east1) |
| gcp\_us\_central1\_cidr | CIDRs for instances hosted on GCP (Iowa / us-central1) |
| gcp\_us\_central1\_ips | IP addresses for instances hosted on GCP (Iowa / gcp-us-central1) |
| gcp\_us\_east1\_cidr | CIDRs for instances hosted on GCP (South Carolina / us-east1) |
| gcp\_us\_east1\_ips | IP addresses for instances hosted on GCP (South Carolina / us-east1) |
| gcp\_us\_east4\_cidr | CIDRs for instances hosted on GCP (Iowa / us-east4) |
| gcp\_us\_east4\_ips | IP addresses for instances hosted on GCP (Northern Virginia / us-east4) |
| gcp\_us\_west1\_cidr | CIDRs for instances hosted on GCP (Oregon / us-west1) |
| gcp\_us\_west1\_ips | IP addresses for instances hosted on GCP (Oregon / us-west1) |
| ie | Legacy Hosting IP Addresses in Ireland for instances hosted on AWS that were created before 07/07/2020 |
| ie\_cidr | Legacy Hosting CIDR in Ireland for instances hosted on AWS that were created before 07/07/2020 |
| sa | Legacy Hosting IP Addresses in South America for instances hosted on AWS that were created before 07/07/2020 |
| sa\_cidr | Legacy Hosting CIDR in South America for instances hosted on AWS that were created before 07/07/2020 |
| us | Legacy Hosting IP Addresses in United States for instances hosted on AWS that were created before 07/07/2020 |
| us\_cidr | Legacy Hosting CIDR in United States for instances hosted on AWS that were created before 07/07/2020 |

# Changelog

See [CHANGELOG.md](CHANGELOG.md)

# LICENSE

Licensed under MIT. See [nemo.mit-license.org](https://nemo.mit-license.org) for complete text.

[3166]: https://www.iso.org/obp/ui/#search
