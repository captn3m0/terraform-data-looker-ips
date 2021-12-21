output "us" {
  description = "Legacy Hosting IP Addresses in United States for instances hosted on AWS that were created before 07/07/2020"
  value       = "${local.us}"
}

output "ca" {
  description = "Legacy Hosting IP Addresses in Canada for instances hosted on AWS that were created before 07/07/2020"
  value       = "${local.ca}"
}

output "as" {
  description = "Legacy Hosting IP Addresses in Asia for instances hosted on AWS that were created before 07/07/2020"
  value       = "${local.as}"
}

output "ie" {
  description = "Legacy Hosting IP Addresses in Ireland for instances hosted on AWS that were created before 07/07/2020"
  value       = "${local.ie}"
}

output "de" {
  description = "Legacy Hosting IP Addresses in Germany for instances hosted on AWS that were created before 07/07/2020"
  value       = "${local.de}"
}

output "au" {
  description = "Legacy Hosting IP Addresses in Australia for instances hosted on AWS that were created before 07/07/2020"
  value       = "${local.au}"
}

output "sa" {
  description = "Legacy Hosting IP Addresses in South America for instances hosted on AWS that were created before 07/07/2020"
  value       = "${local.sa}"
}

output "aws_ips" {
  description = "Legacy Hosting IP addresses for instances hosted anywhere that were created before 07/07/2020"

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
  description = "Legacy Hosting CIDR in United States for instances hosted on AWS that were created before 07/07/2020"
  value       = ["${formatlist("%s/32", local.us)}"]
}

output "ca_cidr" {
  description = "Legacy Hosting CIDR in Canada for instances hosted on AWS that were created before 07/07/2020"
  value       = ["${formatlist("%s/32", local.ca)}"]
}

output "as_cidr" {
  description = "Legacy Hosting CIDR in Asia for instances hosted on AWS that were created before 07/07/2020"
  value       = ["${formatlist("%s/32", local.as)}"]
}

output "ie_cidr" {
  description = "Legacy Hosting CIDR in Ireland for instances hosted on AWS that were created before 07/07/2020"
  value       = ["${formatlist("%s/32", local.ie)}"]
}

output "de_cidr" {
  description = "Legacy Hosting CIDR in Germany for instances hosted on AWS that were created before 07/07/2020"
  value       = ["${formatlist("%s/32", local.de)}"]
}

output "au_cidr" {
  description = "Legacy Hosting CIDR in Australia for instances hosted on AWS that were created before 07/07/2020"
  value       = ["${formatlist("%s/32", local.au)}"]
}

output "sa_cidr" {
  description = "Legacy Hosting CIDR in South America for instances hosted on AWS that were created before 07/07/2020"
  value       = ["${formatlist("%s/32", local.sa)}"]
}

output "aws_cidr" {
  description = "Legacy Hosting CIDR for all for instances hosted on AWS that were created before 07/07/2020"

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
  description = "IP addresses for instances hosted on GCP (South Carolina / us-east1)"
  value       = "${local.gcp-us-east1}"
}

// Northern Virginia
output "gcp_us_east4_ips" {
  description = "IP addresses for instances hosted on GCP (Northern Virginia / us-east4)"
  value       = "${local.gcp-us-east4}"
}

// Council Bluffs, Iowa, USA
output "gcp_us_central1_ips" {
  description = "IP addresses for instances hosted on GCP (Iowa / gcp-us-central1)"
  value       = "${local.gcp-us-central1}"
}

// Oregon
output "gcp_us_west1_ips" {
  description = "IP addresses for instances hosted on GCP (Oregon / us-west1)"
  value       = "${local.gcp-us-west1}"
}

// Canada/Montreal
output "gcp_northamerica_northeast1_ips" {
  description = "IP addresses for instances hosted on GCP (Canada / Montreal / gcp-northamerica-northeast1)"
  value       = "${local.gcp-northamerica-northeast1}"
}

// London
output "gcp_europe_west2_ips" {
  description = "IP addresses for instances hosted on GCP (London / europe-west2)"
  value       = "${local.gcp-europe-west2}"
}

// Frankfurt
output "gcp_europe_west3_ips" {
  description = "IP addresses for instances hosted on GCP (Frankfurt / europe-west3)"
  value       = "${local.gcp-europe-west3}"
}

// Eemshaven, Netherlands
output "gcp_europe_west4_ips" {
  description = "IP addresses for instances hosted on GCP (Eemshaven / europe-west4)"
  value       = "${local.gcp-europe-west4}"
}

// Mumbai, India
output "gcp_asia_south_1_ips" {
  description = "IP addresses for instances hosted on GCP (Mumbai / asia-south1)"
  value       = "${local.gcp-asia-south1}"
}

// Taiwan
output "gcp_asia_east1_ips" {
  description = "IP addresses for instances hosted on GCP (Taiwan / asia-east1)"
  value       = "${local.gcp-asia-east1}"
}

// Tokyo
output "gcp_asia_northeast1_ips" {
  description = "IP addresses for instances hosted on GCP (Tokyo / gcp-asia-northeast1)"
  value       = "${local.gcp-asia-northeast1}"
}

// Singapore
output "gcp_asia_southeast1_ips" {
  description = "IP addresses for instances hosted on GCP (Singapore / asia-southeast1)"
  value       = "${local.gcp-asia-southeast1}"
}

// Jakarta
output "gcp_asia_southeast2_ips" {
  description = "IP addresses for instances hosted on GCP (Jakarta / asia-southeast2)"
  value       = "${local.gcp-asia-southeast2}"
}

// Sydney
output "gcp_australia_southeast1_ips" {
  description = "IP addresses for instances hosted on GCP (Sydney / australia-southeast1)"
  value       = "${local.gcp-australia-southeast1}"
}

// São Paulo, Brazil
output "gcp_southamerica_east1_ips" {
  description = "IP addresses for instances hosted on GCP (São Paulo / gcp-southamerica-east1)"
  value       = "${local.gcp-southamerica-east1}"
}


##### GCP CIDRs #####

// South Carolina
output "gcp_us_east1_cidr" {
  description = "CIDRs for instances hosted on GCP (South Carolina / us-east1)"
  value       = ["${formatlist("%s/32", local.gcp-us-east1)}"]
}

// Northern Virginia
output "gcp_us_east4_cidr" {
  description = "CIDRs for instances hosted on GCP (Iowa / us-east4)"
  value       = ["${formatlist("%s/32", local.gcp-us-east4)}"]
}

// Iowa
output "gcp_us_central1_cidr" {
  description = "CIDRs for instances hosted on GCP (Iowa / us-central1)"
  value       = ["${formatlist("%s/32", local.gcp-us-central1)}"]
}


// Oregon
output "gcp_us_west1_cidr" {
  description = "CIDRs for instances hosted on GCP (Oregon / us-west1)"
  value       = ["${formatlist("%s/32", local.gcp-us-west1)}"]
}


// Canada / Montreal
output "gcp_northamerica_northeast1_cidr" {
  description = "CIDRs for instances hosted on GCP (Canada / Montreal / gcp-northamerica-northeast1)"
  value       = ["${formatlist("%s/32", local.gcp-northamerica-northeast1)}"]
}

// London
output "gcp_europe_west2_cidr" {
  description = "CIDRs for instances hosted on GCP (London / europe-west2)"
  value       = ["${formatlist("%s/32", local.gcp-europe-west2)}"]
}

// Frankfurt
output "gcp_europe_west3_cidr" {
  description = "CIDRs for instances hosted on GCP (Frankfurt / europe-west3)"
  value       = ["${formatlist("%s/32", local.gcp-europe-west3)}"]
}

// Eemshaven, Netherlands
output "gcp_europe_west4_cidr" {
  description = "CIDRs for instances hosted on GCP (Eemshaven / europe-west4)"
  value       = ["${formatlist("%s/32", local.gcp-europe-west4)}"]
}

// Mumbai, India
output "gcp_asia_south1_cidr" {
  description = "CIDRs for instances hosted on GCP (Mumbai / asia-south1)"
  value       = ["${formatlist("%s/32", local.gcp-asia-south1)}"]
}

// Taiwan
output "gcp_asia_east1_cidr" {
  description = "CIDRs for instances hosted on GCP (Taiwan / asia-east1)"
  value       = ["${formatlist("%s/32", local.gcp-asia-east1)}"]
}

// Tokyo
output "gcp_asia_northeast1_cidr" {
  description = "CIDRs for instances hosted on GCP (Tokyo / asia-northeast1)"
  value       = ["${formatlist("%s/32", local.gcp-asia-northeast1)}"]
}

// Singapore
output "gcp_asia_southeast1_cidr" {
  description = "CIDRs for instances hosted on GCP (Singapore / asia-southeast1)"
  value       = ["${formatlist("%s/32", local.gcp-asia-southeast1)}"]
}

// Jakarta
output "gcp_asia_southeast2_cidr" {
  description = "CIDRs for instances hosted on GCP (Jakarta / asia-southeast2)"
  value       = ["${formatlist("%s/32", local.gcp-asia-southeast2)}"]
}

// Sydney
output "gcp_australia_southeast1_cidr" {
  description = "CIDRs for instances hosted on GCP (Sydney / australia-southeast1)"
  value       = ["${formatlist("%s/32", local.gcp-australia-southeast1)}"]
}

// São Paulo, Brazil
output "gcp_southamerica_east1_cidr" {
  description = "CIDRs for instances hosted on GCP (São Paulo / southamerica-east1)"
  value       = ["${formatlist("%s/32", local.gcp-southamerica-east1)}"]
}

##### GCP Common ####

output "gcp_cidr" {
  description = "IP addresses for instances hosted on GCP in any region."

  value = "${formatlist("%s/32", concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-central1,
    local.gcp-us-west1,
    local.gcp-northamerica-northeast1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
    local.gcp-europe-west4,
    local.gcp-asia-east1,
    local.gcp-asia-northeast1,
    local.gcp-asia-southeast2,
    local.gcp-australia-southeast1,
    local.gcp-southamerica-east1
  ))}"
}

output "gcp_ips" {
  description = "Looker IP addresses everywhere (GCP only)."

  value = "${concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-central1,
    local.gcp-us-west1,
    local.gcp-northamerica-northeast1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
    local.gcp-europe-west4,
    local.gcp-asia-east1,
    local.gcp-asia-northeast1,
    local.gcp-asia-southeast1,
    local.gcp-asia-southeast2,
    local.gcp-australia-southeast1,
    local.gcp-southamerica-east1
  )}"
}

##### EKS Section Begins ####

output "eks_us_west_2" {
  description = "IP addresses for instances hosted on Amazon EKS in us-west-2 region."
  value       = "${local.eks-us-west-2}"
}

output "eks_us_east_2" {
  description = "IP addresses for instances hosted on Amazon EKS in us-east-2 region."
  value       = "${local.eks-us-east-2}"
}

output "eks_ca_central_1" {
  description = "IP addresses for instances hosted on Amazon EKS in ca-central-1 region."
  value       = "${local.eks-ca-central-1}"
}

output "eks_eu_central_1" {
  description = "IP addresses for instances hosted on Amazon EKS in eu-central-1 region."
  value       = "${local.eks-eu-central-1}"
}

output "eks_ap_northeast_1" {
  description = "IP addresses for instances hosted on Amazon EKS in ap-northeast-1 region."
  value       = "${local.eks-ap-northeast-1}"
}

output "eks_ap_southeast_2" {
  description = "IP addresses for instances hosted on Amazon EKS in ap-southeast-2 region."
  value       = "${local.eks-ap-southeast-2}"
}

output "eks_sa_east_1" {
  description = "IP addresses for instances hosted on Amazon EKS in sa-east-1 region."
  value       = "${local.eks-sa-east-1}"
}

output "eks_us_west_2_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in us-west-2 region"
  value       = ["${formatlist("%s/32", local.eks-us-west-2)}"]
}

output "eks_us_east_2_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in us-east-2 region"
  value       = ["${formatlist("%s/32", local.eks-us-east-2)}"]
}

output "eks_ca_central_1_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in ca-central-1 region"
  value       = ["${formatlist("%s/32", local.eks-ca-central-1)}"]
}

output "eks_eu_central_1_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in eu-central-1 region"
  value       = ["${formatlist("%s/32", local.eks-eu-central-1)}"]
}

output "eks_ap_northeast_1_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in ap-northeast-1 region"
  value       = ["${formatlist("%s/32", local.eks-ap-northeast-1)}"]
}

output "eks_ap_southeast_2_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in ap-southeast-2 region"
  value       = ["${formatlist("%s/32", local.eks-ap-southeast-2)}"]
}

output "eks_sa_east_1_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in sa-east-1 region"
  value       = ["${formatlist("%s/32", local.eks-sa-east-1)}"]
}

output "eks_ips" {
  description = "IP addresses for instances hosted on Amazon EKS across all regions"

  value = "${concat(
    local.eks-us-west-2,
    local.eks-us-east-2,
    local.eks-ca-central-1,
    local.eks-eu-central-1,
    local.eks-ap-northeast-1,
    local.eks-ap-southeast-2,
    local.eks-sa-east-1,
  )}"
}

output "eks_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS across all regions"

  value = "${formatlist("%s/32", concat(
    local.eks-us-west-2,
    local.eks-us-east-2,
    local.eks-ca-central-1,
    local.eks-eu-central-1,
    local.eks-ap-northeast-1,
    local.eks-ap-southeast-2,
    local.eks-sa-east-1,
  ))}"
}

##### Microsoft Azure IPs ####

// Virginia, USA
output "azure_us_east2_ips" {
  description = "IP addresses for instances hosted on Microsoft Azure (Virginia, USA / azure-us-east2)"
  value       = "${local.azure-us-east2}"
}


##### Microsoft Azure  CIDRs #####

// Virginia, USA
output "azure_us_east2_cidr" {
  description = "CIDRs for instances hosted on Microsoft Azure (Virginia, USA / azure-us-east2)"
  value       = ["${formatlist("%s/32", local.azure-us-east2)}"]
}

##### Microsoft Azure Combined ####

output "azure_ips" {
  description = "IP addresses for instances hosted on Microsoft Azure across all regions"

  value = "${concat(
    local.azure-us-east2,
  )}"
}

output "azure_cidr" {
  description = "CIDRs for instances hosted on Microsoft Azure across all regions"

  value = "${formatlist("%s/32", concat(
    local.azure-us-east2,
  ))}"
}

##### Combined AWS+GCP+EKS+Azure #####

output "all_cidr" {
  description = "Looker IP addresses everywhere in CIDR (Legacy + GCP + EKS + Azure)"

  value = "${formatlist("%s/32", concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-central1,
    local.gcp-us-west1,
    local.gcp-northamerica-northeast1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
    local.gcp-europe-west4,
    local.gcp-asia-south1,
    local.gcp-asia-northeast1,
    local.gcp-asia-southeast1,
    local.gcp-australia-southeast1,
    local.gcp-southamerica-east1,
    local.us,
    local.ca,
    local.as,
    local.ie,
    local.de,
    local.au,
    local.sa,
    local.eks-us-west-2,
    local.eks-us-east-2,
    local.eks-ca-central-1,
    local.eks-eu-central-1,
    local.eks-ap-northeast-1,
    local.eks-ap-southeast-2,
    local.eks-sa-east-1,
    local.azure-us-east2,
  ))}"
}

output "all_ips" {
  description = "Looker IP addresses everywhere (Legacy AWS + GCP + EKS + Azure)"

  value = "${concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-central1,
    local.gcp-us-west1,
    local.gcp-northamerica-northeast1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
    local.gcp-europe-west4,
    local.gcp-asia-south1,
    local.gcp-asia-northeast1,
    local.gcp-asia-southeast1,
    local.gcp-australia-southeast1,
    local.gcp-southamerica-east1,
    local.us,
    local.ca,
    local.as,
    local.ie,
    local.de,
    local.au,
    local.sa,
    local.eks-us-east-2,
    local.eks-us-west-2,
    local.eks-ca-central-1,
    local.eks-eu-central-1,
    local.eks-ap-northeast-1,
    local.eks-ap-southeast-2,
    local.eks-sa-east-1,
    local.azure-us-east2,
  )}"
}
