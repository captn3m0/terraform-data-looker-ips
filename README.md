# terraform-data-looker-ips

Looker's IP addresses,
as per [their documentation](https://docs.looker.com/setup-and-management/enabling-secure-db).

> All network traffic from Looker will come from one of the following IP addresses, based on the region where your Looker instance is hosted. Please whitelist each of the IP addresses in the appropriate region listed below. These whitelist IP addresses also apply for SFTP and SMTP destinations.

# Usage

```
module "looker-ips" {
  source  = "captn3m0/looker-ips/data"
  version = "1.1.0"
}

resource "aws_security_group_rule" "allow_all_from_looker_us" {
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
[ISO country codes][3166] and [common continent codes](https://datahub.io/core/continent-codes#readme)

| Name      | Description                                  |
| --------- | -------------------------------------------- |
| `as`      | Looker IP Addresses in Asia                  |
| `as_cidr` | Looker IP Addresses in Asia in CIDR          |
| `au`      | Looker IP Addresses in Australia             |
| `au_cidr` | Looker IP Addresses in Australia in CIDR     |
| `ca`      | Looker IP Addresses in Canada                |
| `ca_cidr` | Looker IP Addresses in Canada in CIDR        |
| `de`      | Looker IP Addresses in Germany               |
| `de_cidr` | Looker IP Addresses in Germany in CIDR       |
| `ie`      | Looker IP Addresses in Ireland               |
| `ie_cidr` | Looker IP Addresses in Ireland in CIDR       |
| `sa`      | Looker IP Addresses in South America         |
| `sa_cidr` | Looker IP Addresses in South America in CIDR |
| `us`      | Looker IP Addresses in United States         |
| `us_cidr` | Looker IP Addresses in United States in CIDR |

# LICENSE

Licensed under MIT. See [nemo.mit-license.org](https://nemo.mit-license.org) for complete text.

[3166]: https://www.iso.org/obp/ui/#search
