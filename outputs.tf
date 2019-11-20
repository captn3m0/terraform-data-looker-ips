output "us" {
  description = "Looker IP Addresses in United States"
  value       = "${local.us}"
}

output "ca" {
  description = "Looker IP Addresses in Canada"
  value       = "${local.ca}"
}

output "as" {
  description = "Looker IP Addresses in Asia"
  value       = "${local.as}"
}

output "ie" {
  description = "Looker IP Addresses in Ireland"
  value       = "${local.ie}"
}

output "de" {
  description = "Looker IP Addresses in Germany"
  value       = "${local.de}"
}

output "au" {
  description = "Looker IP Addresses in Australia"
  value       = "${local.au}"
}

output "sa" {
  description = "Looker IP Addresses in South America"
  value       = "${local.sa}"
}

output "all_ips" {
  description = "Looker IP addresses everywhere"

  value = "${concat(
      local.us,
      local.ca,
      local.as,
      local.ie,
      local.de,
      local.au,
      local.sa,
    )}"
}

output "us_cidr" {
  description = "Looker IP Addresses in United States in CIDR"
  value       = ["${formatlist("%s/32", local.us)}"]
}

output "ca_cidr" {
  description = "Looker IP Addresses in Canada in CIDR"
  value       = ["${formatlist("%s/32", local.ca)}"]
}

output "as_cidr" {
  description = "Looker IP Addresses in Asia in CIDR"
  value       = ["${formatlist("%s/32", local.as)}"]
}

output "ie_cidr" {
  description = "Looker IP Addresses in Ireland in CIDR"
  value       = ["${formatlist("%s/32", local.ie)}"]
}

output "de_cidr" {
  description = "Looker IP Addresses in Germany in CIDR"
  value       = ["${formatlist("%s/32", local.de)}"]
}

output "au_cidr" {
  description = "Looker IP Addresses in Australia in CIDR"
  value       = ["${formatlist("%s/32", local.au)}"]
}

output "sa_cidr" {
  description = "Looker IP Addresses in South America in CIDR"
  value       = ["${formatlist("%s/32", local.sa)}"]
}

output "all_cidr" {
  description = "Looker IP addresses everywhere in CIDR"

  value = "${formatlist("%s/32", concat(
      local.us,
      local.ca,
      local.as,
      local.ie,
      local.de,
      local.au,
      local.sa,
    ))}"
}
