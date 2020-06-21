output "us" {
  description = "Looker IP Addresses in United States (AWS only)"
  value       = "${local.us}"
}

output "ca" {
  description = "Looker IP Addresses in Canada (AWS only)"
  value       = "${local.ca}"
}

output "as" {
  description = "Looker IP Addresses in Asia (AWS only)"
  value       = "${local.as}"
}

output "ie" {
  description = "Looker IP Addresses in Ireland (AWS only)"
  value       = "${local.ie}"
}

output "de" {
  description = "Looker IP Addresses in Germany (AWS only)"
  value       = "${local.de}"
}

output "au" {
  description = "Looker IP Addresses in Australia (AWS only)"
  value       = "${local.au}"
}

output "sa" {
  description = "Looker IP Addresses in South America (AWS only)"
  value       = "${local.sa}"
}

output "aws_ips" {
  description = "Looker IP addresses everywhere (AWS only)"

  value = "${concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-west1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
  )}"
}

output "us_cidr" {
  description = "Looker IP Addresses in United States in CIDR (AWS only)"
  value       = ["${formatlist("%s/32", local.us)}"]
}

output "ca_cidr" {
  description = "Looker IP Addresses in Canada in CIDR (AWS only)"
  value       = ["${formatlist("%s/32", local.ca)}"]
}

output "as_cidr" {
  description = "Looker IP Addresses in Asia in CIDR (AWS only)"
  value       = ["${formatlist("%s/32", local.as)}"]
}

output "ie_cidr" {
  description = "Looker IP Addresses in Ireland in CIDR (AWS only)"
  value       = ["${formatlist("%s/32", local.ie)}"]
}

output "de_cidr" {
  description = "Looker IP Addresses in Germany in CIDR (AWS only)"
  value       = ["${formatlist("%s/32", local.de)}"]
}

output "au_cidr" {
  description = "Looker IP Addresses in Australia in CIDR (AWS only)"
  value       = ["${formatlist("%s/32", local.au)}"]
}

output "sa_cidr" {
  description = "Looker IP Addresses in South America in CIDR (AWS only)"
  value       = ["${formatlist("%s/32", local.sa)}"]
}

output "aws_cidr" {
  description = "Looker IP addresses for all AWS regions (CIDR format)"

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

# GCP Section Begins

##### GCP IPs #####

// South Carolina
output "gcp_us_east1_ips" {
  description = "Looker IPs for instances hosted in GCP (South Carolina / us-east1)"
  value       = "${local.gcp-us-east1}"
}

// Northern Virginia
output "gcp_us_east4_ips" {
  description = "Looker IPs for instances hosted in GCP (Northern Virginia / us-east4)"
  value       = "${local.gcp-us-east4}"
}

// Oregon
output "gcp_us_west1_ips" {
  description = "Looker IPs for instances hosted in GCP (Oregon / us-west1)"
  value       = "${local.gcp-us-west1}"
}

// Canada/Montreal
output "gcp_northamerica_northeast1_ips" {
  description = "Looker IPs for instances hosted in GCP (Canada / Montreal / gcp-northamerica-northeast1)"
  value       = "${local.gcp-northamerica-northeast1}"
}

// London
output "gcp_europe_west2_ips" {
  description = "Looker IPs for instances hosted in GCP (London / europe-west2)"
  value       = "${local.gcp-europe-west2}"
}

// Frankfurt
output "gcp_europe_west3_ips" {
  description = "Looker IPs for instances hosted in GCP (Frankfurt / europe-west3)"
  value       = "${local.gcp-europe-west3}"
}

// Singapore
output "gcp_asia_southeast1_ips" {
  description = "Looker IPs for instances hosted in GCP (Singapore / asia-southeast1)"
  value       = "${local.gcp-asia-southeast1}"
}

// Sydney
output "gcp_australia_southeast1_ips" {
  description = "Looker IPs for instances hosted in GCP (Sydney / australia-southeast1)"
  value       = "${local.gcp-australia-southeast1}"
}


##### GCP CIDRs #####

// South Carolina
output "gcp_us_east1_cidr" {
  description = "Looker CIDRs for instances hosted in GCP (South Carolina / us-east1)"
  value       = ["${formatlist("%s/32", local.gcp-us-east1)}"]
}

// Northern Virginia
output "gcp_us_east4_cidr" {
  description = "Looker CIDRs for instances hosted in GCP (Northern Virginia / us-east4)"
  value       = ["${formatlist("%s/32", local.gcp-us-east4)}"]
}

// Oregon
output "gcp_us_west1_cidr" {
  description = "Looker CIDRs for instances hosted in GCP (Oregon / us-west1)"
  value       = ["${formatlist("%s/32", local.gcp-us-west1)}"]
}


// Canada / Montreal
output "gcp_northamerica_northeast1_cidr" {
  description = "Looker CIDRs for instances hosted in GCP (Canada / Montreal / gcp-northamerica-northeast1)"
  value       = ["${formatlist("%s/32", local.gcp-northamerica-northeast1)}"]
}

// London
output "gcp_europe_west2_cidr" {
  description = "Looker CIDRs for instances hosted in GCP (London / europe-west2)"
  value       = ["${formatlist("%s/32", local.gcp-europe-west2)}"]
}

// Frankfurt
output "gcp_europe_west3_cidr" {
  description = "Looker CIDRs for instances hosted in GCP (Frankfurt / europe-west3)"
  value       = ["${formatlist("%s/32", local.gcp-europe-west3)}"]
}

// Singapore
output "gcp_asia_southeast1_cidr" {
  description = "Looker CIDRs for instances hosted in GCP (South Carolina / us-east1)"
  value       = ["${formatlist("%s/32", local.gcp-us-east1)}"]
}

// Singapore
output "gcp_australia_southeast1_cidr" {
  description = "Looker CIDRs for instances hosted in GCP (Sydney / australia-southeast1)"
  value       = ["${formatlist("%s/32", local.gcp-australia-southeast1)}"]
}

##### GCP Common ####

output "gcp_cidr" {
  description = "Looker IP addresses everywhere in CIDR (GCP only)"

  value = "${formatlist("%s/32", concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-west1,
    local.gcp-northamerica-northeast1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
    local.gcp-asia-southeast1,
    local.gcp-australia-southeast1
  ))}"
}


output "gcp_ips" {
  description = "Looker IP addresses everywhere (GCP only)"

  value = "${concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-west1,
    local.gcp-northamerica-northeast1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
    local.gcp-asia-southeast1,
    local.gcp-australia-southeast1
  )}"
}

##### Combined AWS+GCP #####

output "all_cidr" {
  description = "Looker IP addresses everywhere in CIDR"

  value = "${formatlist("%s/32", concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-west1,
    local.gcp-northamerica-northeast1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
    local.gcp-asia-southeast1,
    local.gcp-australia-southeast1,
    local.us,
    local.ca,
    local.as,
    local.ie,
    local.de,
    local.au,
    local.sa,
  ))}"
}


output "all_ips" {
  description = "Looker IP addresses everywhere (both AWS and GCP)"

  value = "${concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-west1,
    local.gcp-northamerica-northeast1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
    local.gcp-asia-southeast1,
    local.gcp-australia-southeast1,
    local.us,
    local.ca,
    local.as,
    local.ie,
    local.de,
    local.au,
    local.sa,
  )}"
}
