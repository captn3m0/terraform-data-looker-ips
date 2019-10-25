# terraform-data-looker-ips

Looker's IP addresses,
as per [their documentation](https://docs.looker.com/setup-and-management/enabling-secure-db).

> All network traffic from Looker will come from one of the following IP addresses, based on the region where your Looker instance is hosted. Please whitelist each of the IP addresses in the appropriate region listed below. These whitelist IP addresses also apply for SFTP and SMTP destinations.

# Usage

```
module "looker-ips" {
  source  = "captn3m0/looker-ips/data"
  version = "1.0.0"
}

resource "aws_security_group_rule" "allow_all_from_looker_us" {
  type            = "ingress"
  from_port       = 0
  to_port         = 443
  protocol        = "tcp"
  cidr_blocks     = ["${module.looker-ips.us}"]
  security_group_id = "sg-123456"
}
```

## Outputs

| Name | Description                          |
| ---- | ------------------------------------ |
| as   | Looker IP Addresses in Asia          |
| au   | Looker IP Addresses in Australia     |
| ca   | Looker IP Addresses in Canada        |
| de   | Looker IP Addresses in Germany       |
| ie   | Looker IP Addresses in Ireland       |
| sa   | Looker IP Addresses in South America |
| us   | Looker IP Addresses in United States |

# LICENSE

Licensed under MIT. See [nemo.mit-license.org](https://nemo.mit-license.org) for complete text.
