# terraform-data-looker-ips

Looker's IP addresses, as per [their documentation](https://docs.looker.com/setup-and-management/enabling-secure-db).

> All network traffic from Looker will come from one of the following IP addresses, based on the host+region where your Looker instance is hosted. Please whitelist each of the IP addresses in the appropriate region listed below. These whitelist IP addresses also apply for SFTP and SMTP destinations. Starting April 2020, Looker-hosted instances are hosted on GCP by default.

# Usage

```
module "looker-ips" {
  source  = "captn3m0/looker-ips/data"
  version = "1.2.0"
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

All output variables are lists. The output names are based on 2 letter
[ISO country codes][3166] and [common continent codes](https://datahub.io/core/continent-codes#readme) for instances hosted in AWS. For instances hosted in GCP, [the corresponding region codes are used](https://cloud.google.com/compute/docs/regions-zones).

To decide which one you need to use, you will need to know:

1. Whether your instance is hosted in GCP or AWS?
2. Which region/country it is hosted in?

| Name | Description |
|------|-------------|
| all\_cidr | Looker IP addresses everywhere in CIDR |
| all\_ips | Looker IP addresses everywhere (both AWS and GCP) |
| as | Looker IP Addresses in Asia (AWS only) |
| as\_cidr | Looker IP Addresses in Asia in CIDR (AWS only) |
| au | Looker IP Addresses in Australia (AWS only) |
| au\_cidr | Looker IP Addresses in Australia in CIDR (AWS only) |
| aws\_cidr | Looker IP addresses for all AWS regions (CIDR format) |
| aws\_ips | Looker IP addresses everywhere (AWS only) |
| ca | Looker IP Addresses in Canada (AWS only) |
| ca\_cidr | Looker IP Addresses in Canada in CIDR (AWS only) |
| de | Looker IP Addresses in Germany (AWS only) |
| de\_cidr | Looker IP Addresses in Germany in CIDR (AWS only) |
| gcp\_asia\_southeast1\_cidr | Looker CIDRs for instances hosted in GCP (South Carolina / us-east1) |
| gcp\_asia\_southeast1\_ips | Looker IPs for instances hosted in GCP (Singapore / asia-southeast1) |
| gcp\_australia\_southeast1 | Looker CIDRs for instances hosted in GCP (Sydney / australia-southeast1) |
| gcp\_cidr | Looker IP addresses everywhere in CIDR (GCP only) |
| gcp\_europe\_west2\_cidr | Looker CIDRs for instances hosted in GCP (London / europe-west2) |
| gcp\_europe\_west2\_ips | Looker IPs for instances hosted in GCP (London / europe-west2) |
| gcp\_europe\_west3\_cidr | Looker CIDRs for instances hosted in GCP (Frankfurt / europe-west3) |
| gcp\_europe\_west3\_ips | Looker IPs for instances hosted in GCP (Frankfurt / europe-west3) |
| gcp\_ips | Looker IP addresses everywhere (GCP only) |
| gcp\_us\_east1\_cidr | Looker CIDRs for instances hosted in GCP (South Carolina / us-east1) |
| gcp\_us\_east1\_ips | Looker IPs for instances hosted in GCP (South Carolina / us-east1) |
| gcp\_us\_east4\_cidr | Looker CIDRs for instances hosted in GCP (Northern Virginia / us-east4) |
| gcp\_us\_east4\_ips | Looker IPs for instances hosted in GCP (Northern Virginia / us-east4) |
| gcp\_us\_west1\_cidr | Looker CIDRs for instances hosted in GCP (Oregon / us-west1) |
| gcp\_us\_west1\_ips | Looker IPs for instances hosted in GCP (Oregon / us-west1) |
| ie | Looker IP Addresses in Ireland (AWS only) |
| ie\_cidr | Looker IP Addresses in Ireland in CIDR (AWS only) |
| sa | Looker IP Addresses in South America (AWS only) |
| sa\_cidr | Looker IP Addresses in South America in CIDR (AWS only) |
| us | Looker IP Addresses in United States (AWS only) |
| us\_cidr | Looker IP Addresses in United States in CIDR (AWS only) |

# Changelog

See [CHANGELOG.md](CHANGELOG.md)

# LICENSE

Licensed under MIT. See [nemo.mit-license.org](https://nemo.mit-license.org) for complete text.

[3166]: https://www.iso.org/obp/ui/#search
