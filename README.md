# terraform-data-looker-ips

Looker's IP addresses, as per [their documentation](https://docs.looker.com/setup-and-management/enabling-secure-db).

This module supports all 3 modes of hosting:

- Legacy AWS
- Next generation GCP
- Next generation EKS

Please make sure to read the Looker documentation before you start using this module.

# Usage

```hcl
module "looker-ips" {
  source  = "captn3m0/looker-ips/data"
  version = "1.3.4"
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
- For instances hosted in  "Legacy AWS hosting" is based on 2 letter [ISO country codes][3166] and [common continent codes](https://datahub.io/core/continent-codes#readme).
- For instances hosted in GCP, [the corresponding region codes are used](https://cloud.google.com/compute/docs/regions-zones).
- For instances hosted in EKS, the AWS region code is prefixed with `eks-`.
- Every output variable is available in 2 formats - list of IP addresses, or list of CIDRs. The CIDRs are generated using a `/32` suffix on all IPs.

To pick the correct output variable, check the below and search for the corresponding term the variable description.

1. If your instance is hosted on AWS that was created before 07/07/2020 - Search for "AWS"
2. If your instance is hosted on EKS and was created after 07/0/72020 - Search for "EKS"
3. If your instance is hosted on GCP - Search for GCP

If you are unsure which region your instance is in, please reach out to Looker support.

| Name | Description |
|------|-------------|
| all\_cidr | Looker IP addresses everywhere in CIDR (Legacy + GCP + EKS) |
| all\_ips | Looker IP addresses everywhere (Legacy AWS + GCP + EKS) |
| eks\_ap\_northeast\_1 | IP addresses for instances hosted on Amazon EKS in ap-northeast-1 region. |
| eks\_ap\_northeast\_1\_cidr | CIDRs for instances hosted on Amazon EKS in eks-ap-northeast-1 region |
| eks\_ap\_southeast\_2 | IP addresses for instances hosted on Amazon EKS in ap-southeast-2 region. |
| eks\_ap\_southeast\_2\_cidr | CIDRs for instances hosted on Amazon EKS in eks-ap-southeast-2 region |
| eks\_ca\_central\_1 | IP addresses for instances hosted on Amazon EKS in ca-central-1 region. |
| eks\_ca\_central\_1\_cidr | CIDRs for instances hosted on Amazon EKS in eks-ca-central-1 region |
| eks\_cidr | CIDRs for instances hosted on Amazon EKS across all regions |
| eks\_eu\_central\_1 | IP addresses for instances hosted on Amazon EKS in eu-central-1 region. |
| eks\_eu\_central\_1\_cidr | CIDRs for instances hosted on Amazon EKS in eks-eu-central-1 region |
| eks\_eu\_west\_1 | IP addresses for instances hosted on Amazon EKS in eu-west-1 region. |
| eks\_eu\_west\_1\_cidr | CIDRs for instances hosted on Amazon EKS in eks-eu-west-1 region |
| eks\_ips | IP addresses for instances hosted on Amazon EKS across all regions |
| eks\_sa\_east\_1 | IP addresses for instances hosted on Amazon EKS in sa-east-1 region. |
| eks\_sa\_east\_1\_cidr | CIDRs for instances hosted on Amazon EKS in eks-sa-east-1 region |
| gcp\_asia\_northeast1\_cidr | CIDRs for instances hosted on GCP (Tokyo / asia-northeast1) |
| gcp\_asia\_northeast1\_ips | IP addresses for instances hosted on GCP (Tokyo / gcp-asia-northeast1) |
| gcp\_asia\_southeast1\_cidr | CIDRs for instances hosted on GCP (South Carolina / us-east1) |
| gcp\_asia\_southeast1\_ips | IP addresses for instances hosted on GCP (Singapore / asia-southeast1) |
| gcp\_australia\_southeast1\_cidr | CIDRs for instances hosted on GCP (Sydney / australia-southeast1) |
| gcp\_australia\_southeast1\_ips | IP addresses for instances hosted on GCP (Sydney / australia-southeast1) |
| gcp\_cidr | IP addresses for instances hosted on GCP in any region. |
| gcp\_europe\_west2\_cidr | CIDRs for instances hosted on GCP (London / europe-west2) |
| gcp\_europe\_west2\_ips | IP addresses for instances hosted on GCP (London / europe-west2) |
| gcp\_europe\_west3\_cidr | CIDRs for instances hosted on GCP (Frankfurt / europe-west3) |
| gcp\_europe\_west3\_ips | IP addresses for instances hosted on GCP (Frankfurt / europe-west3) |
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
| as | Legacy Hosting IP Addresses in Asia for instances hosted on AWS that were created before 07/07/2020 |
| as\_cidr | Legacy Hosting CIDR in Asia for instances hosted on AWS that were created before 07/07/2020 |
| au | Legacy Hosting IP Addresses in Australia for instances hosted on AWS that were created before 07/07/2020 |
| au\_cidr | Legacy Hosting CIDR in Australia for instances hosted on AWS that were created before 07/07/2020 |
| aws\_cidr | Legacy Hosting CIDR for all for instances hosted on AWS that were created before 07/07/2020 |
| aws\_ips | Legacy Hosting IP addresses for instances hosted anywhere that were created before 07/07/2020 |
| ca | Legacy Hosting IP Addresses in Canada for instances hosted on AWS that were created before 07/07/2020 |
| ca\_cidr | Legacy Hosting CIDR in Canada for instances hosted on AWS that were created before 07/07/2020 |
| de | Legacy Hosting IP Addresses in Germany for instances hosted on AWS that were created before 07/07/2020 |
| de\_cidr | Legacy Hosting CIDR in Germany for instances hosted on AWS that were created before 07/07/2020 |
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
