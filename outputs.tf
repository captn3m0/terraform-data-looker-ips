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
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-west1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
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

// Oregon
output "gcp_us_west1_ips" {
  description = "IP addresses for instances hosted on GCP (Oregon / us-west1)"
  value       = "${local.gcp-us-west1}"
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

// Singapore
output "gcp_asia_southeast1_ips" {
  description = "IP addresses for instances hosted on GCP (Singapore / asia-southeast1)"
  value       = "${local.gcp-asia-southeast1}"
}

##### GCP CIDRs #####

// South Carolina
output "gcp_us_east1_cidr" {
  description = "CIDRs for instances hosted on GCP (South Carolina / us-east1)"
  value       = ["${formatlist("%s/32", local.gcp-us-east1)}"]
}

// Northern Virginia
output "gcp_us_east4_cidr" {
  description = "CIDRs for instances hosted on GCP (Northern Virginia / us-east4)"
  value       = ["${formatlist("%s/32", local.gcp-us-east4)}"]
}

// Oregon
output "gcp_us_west1_cidr" {
  description = "CIDRs for instances hosted on GCP (Oregon / us-west1)"
  value       = ["${formatlist("%s/32", local.gcp-us-west1)}"]
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

// Singapore
output "gcp_asia_southeast1_cidr" {
  description = "CIDRs for instances hosted on GCP (South Carolina / us-east1)"
  value       = ["${formatlist("%s/32", local.gcp-us-east1)}"]
}

##### GCP Common ####

output "gcp_cidr" {
  description = "IP addresses for instances hosted on GCP in any region."

  value = "${formatlist("%s/32", concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-west1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
    local.gcp-asia-southeast1,
  ))}"
}

output "gcp_ips" {
  description = "Looker IP addresses everywhere (GCP only)."

  value = "${concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-west1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
    local.gcp-asia-southeast1,
  )}"
}

##### EKS Section Begins ####

output "eks_ca_central_1" {
  description = "IP addresses for instances hosted on Amazon EKS in ca-central-1 region."
  value       = "${local.eks-ca-central-1}"
}
output "eks_eu_west_1" {
  description = "IP addresses for instances hosted on Amazon EKS in eu-west-1 region."
  value       = "${local.eks-eu-west-1}"
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

output "eks_ca_central_1_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in eks-ca-central-1 region"
  value       = ["${formatlist("%s/32", local.eks-ca-central-1)}"]
}
output "eks_eu_west_1_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in eks-eu-west-1 region"
  value       = ["${formatlist("%s/32", local.eks-eu-west-1)}"]
}
output "eks_eu_central_1_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in eks-eu-central-1 region"
  value       = ["${formatlist("%s/32", local.eks-eu-central-1)}"]
}
output "eks_ap_northeast_1_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in eks-ap-northeast-1 region"
  value       = ["${formatlist("%s/32", local.eks-ap-northeast-1)}"]
}
output "eks_ap_southeast_2_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in eks-ap-southeast-2 region"
  value       = ["${formatlist("%s/32", local.eks-ap-southeast-2)}"]
}
output "eks_sa_east_1_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS in eks-sa-east-1 region"
  value       = ["${formatlist("%s/32", local.eks-sa-east-1)}"]
}

output "eks_ips" {
  description = "IP addresses for instances hosted on Amazon EKS across all regions"

  value = "${concat(
    local.eks-us-east-1,
    local.eks-ca-central-1,
    local.eks-eu-west-1,
    local.eks-eu-central-1,
    local.eks-ap-northeast-1,
    local.eks-ap-southeast-2,
    local.eks-sa-east-1,
  )}"
}

output "eks_cidr" {
  description = "CIDRs for instances hosted on Amazon EKS across all regions"

  value = "${formatlist("%s/32", concat(
    local.eks-us-east-1,
    local.eks-ca-central-1,
    local.eks-eu-west-1,
    local.eks-eu-central-1,
    local.eks-ap-northeast-1,
    local.eks-ap-southeast-2,
    local.eks-sa-east-1,
  ))}"
}



##### Combined AWS+GCP+EKS #####

output "all_cidr" {
  description = "Looker IP addresses everywhere in CIDR (Legacy + GCP + EKS)"

  value = "${formatlist("%s/32", concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-west1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
    local.gcp-asia-southeast1,
    local.us,
    local.ca,
    local.as,
    local.ie,
    local.de,
    local.au,
    local.sa,
    local.eks-us-east-1,
    local.eks-ca-central-1,
    local.eks-eu-west-1,
    local.eks-eu-central-1,
    local.eks-ap-northeast-1,
    local.eks-ap-southeast-2,
    local.eks-sa-east-1,
  ))}"
}

output "all_ips" {
  description = "Looker IP addresses everywhere (Legacy AWS + GCP + EKS)"

  value = "${concat(
    local.gcp-us-east1,
    local.gcp-us-east4,
    local.gcp-us-west1,
    local.gcp-europe-west2,
    local.gcp-europe-west3,
    local.gcp-asia-southeast1,
    local.us,
    local.ca,
    local.as,
    local.ie,
    local.de,
    local.au,
    local.sa,
    local.eks-us-east-1,
    local.eks-ca-central-1,
    local.eks-eu-west-1,
    local.eks-eu-central-1,
    local.eks-ap-northeast-1,
    local.eks-ap-southeast-2,
    local.eks-sa-east-1,
  )}"
}
