# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased][unreleased]

## [2.0.8] - 2022-01-11
### Added
- 3 new IPs added to `gcp-us-east4` (Ashburn, Northern Virginia)
- 3 new IPs added to `gcp-us-central1` (Council Bluffs, Iowa)
- 4 new IPs added to `gcp-us-west1` (The Dalles, Oregon)
- 5 new IPs added to `gcp-europe-west2` (London, England, UK)
- 3 new IPs added to `gcp-europe-west3` (Frankfurt, Germany)
- 1 new IP added to `gcp-asia-northeast1` (Tokyo, Japan)

## [2.0.7] - 2021-12-27
### Added
- 3 new IPs added to `gcp-us-west1`

## [2.0.6] - 2021-12-21
### Added
- 6 new IPs added to `eks-eu-central-1`
- 6 new IPs added to `eks-ca-central-1`
- New region: `eks-us-east-2` with 3 IPs
- 1 new IP for `gcp-europe-west3`
### Removed
- 1 IP removed from `gcp-us-east1` (`35.196.227.117`)
- 1 IP removed from `gcp-europe-west2` (`34.142.123.96`)

## [2.0.5] - 2021-11-23
### Removed
- All IPs that were added in [2.0.3]. These changes were reverted by Looker and were confirmed as a mistake.
### Added
- 1 IP added in `gcp-europe-west2`
- 1 IP that was removed in `gcp-us-east1` in [2.0.3] (`35.196.227.117`).

## [2.0.4] - 2021-11-07
### Removed
- 1 IP removed for `gcp-us-east1`
### Added
- 1 IP added for `gcp-us-west1`
- 1 IP added for `gcp-asia-northeast1`
- 6 IPs added for `eks-ca-central-1`
- 6 IPs added for `eks-eu-central-1`

## [2.0.3] - 2021-07-13
### Removed
- 1 IP removed for `gcp-us-west1`
### Added
- 1 IP added for `gcp-us-west1`

## [2.0.2] - 2021-06-18
### Added
- New Region for EKS: `us-west-2`

## [2.0.1] - 2021-06-11
### Added
- New IP for `gcp-us-east4`

## [2.0.0][2.0.0] - 2021-05-26
### Added
- GCP/`asia-south-1` (Mumbai, India)
### Removed
- Removed: `EKS-us-east-1` ("For the list of IP addresses to add to your allowlist for this region, contact Looker Support")
- Removed: `EKS-eu-west-1` ("For the list of IP addresses to add to your allowlist for this region, contact Looker Support")

## [1.4.0][1.4.0] - 2021-04-24
### Added
- 1 IP added for instances hosted on Microsoft Azure `us-east2` region.

## [1.3.8][1.3.8] - 2021-02-10

### Changed
- 3 IPs removed and 3 IPs added for instances hosted on Amazon EKS `us-east-1` region.

## [1.3.7][1.3.7] - 2020-12-24

### Added
- 3 new IPs for the Europe (Ireland) (`eu-west-1`) Instances Hosted on Amazon Elastic Kubernetes Service (`eks-eu-west-1`)

## [1.3.6][1.3.6] - 2020-11-26

### Removed
- 12 IPs removed from various GCP and AWS zones.

## [1.3.5][1.3.5] - 2020-11-25

### Changed
- 2 IPs moved from Frankfurt (`europe-west3`) to Eemshaven (`europe-west4`)

## [1.3.4][1.3.4] - 2020-11-05

### Fixed
- Outpus `aws_ips` and `gcp_asia_southeast1_cidr` now point to the correct IPs.

### Added
- 2 new regions for GCP: `asia-east1` and `asia-southeast2`.

### Changed
- New IPs for EKS in `us-east-1`

## [1.3.3][1.3.3] - 2020-11-03
### Changed
- New IPs for EKS in `us-east-1`

## [1.3.2][1.3.2] - 2020-08-10

### Changed
- New IPs for GCP (us-east4, us-central1, us-west1, europe-west2)

## [1.3.1][1.3.1] - 2020-08-05

### Added
- Adds Iowa, Tokyo, and São Paulo regions (all GCP)
- The Sydney and Singapore regions went missing on the website for a while, added them back.

## [1.3.0][1.3.0] - 2020-07-12

### Added
- Adds support for new EKS hosting

## [1.2.3][1.2.3] - 2020-06-21

### Added
- New Looker IP for GCP/Canada region
- Fixes output variable name for Sydney regions

## [1.2.2][1.2.2] - 2020-06-13

### Added
- New Looker IP for GCP/Sydney region

## [1.2.1][1.2.1] - 2020-05-15

### Added

- New Looker IP for GCP/Singapore Region

### Fixed

- `gcp_ips` output was incorrect, didn't have GCP IPs.

## [1.2.0][1.2.0] - 2020-04-1

### Added

-   Added Looker IP addresses for GCP hosted instances.

## [1.1.2][1.1.2] - 2020-03-20

### Added

-   Added a new IP Address for Looker Germany

## [1.1.1][1.1.1] - 2019-11-20

### Added

-   Adds outputs for `all_ips` and `all_cidrs`

## [1.1.0][1.1.0] - 2019-10-25

### Added

-   Adds support for CIDRs for various regions.

## [1.0.0][1.0.0] - 2019-10-25

## Added

-   Initial Release

[unreleased]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v2.0.7...HEAD
[2.0.7]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v2.0.6...v2.0.7
[2.0.6]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v2.0.5...v2.0.6
[2.0.5]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v2.0.4...v2.0.5
[2.0.4]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v2.0.3...v2.0.4
[2.0.3]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v2.0.2...v2.0.3
[2.0.2]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v2.0.1...v2.0.2
[2.0.1]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v2.0.0...v2.0.1
[2.0.0]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.4.0...v2.0.0
[1.4.0]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.3.8...v1.4.0
[1.3.8]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.3.7...v1.3.8
[1.3.7]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.3.6...v1.3.7
[1.3.6]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.3.5...v1.3.6
[1.3.5]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.3.4...v1.3.5
[1.3.4]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.3.3...v1.3.4
[1.3.3]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.3.2...v1.3.3
[1.3.2]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.3.1...v1.3.2
[1.3.1]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.3.0...v1.3.1
[1.3.0]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.2.3...v1.3.0
[1.2.3]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.2.2...v1.2.3
[1.2.2]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.2.1...v1.2.2
[1.2.1]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.2.1...v1.2.2
[1.2.1]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.2.0...v1.2.1
[1.2.0]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.1.2...1.2.0
[1.1.2]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.1.1...1.1.1
[1.1.2]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.1.1...1.1.2
[1.1.1]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.1.0...1.1.1
[1.1.0]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.0.0...1.1.0
[1.0.0]: https://github.com/captn3m0/terraform-data-looker-ips/releases/tag/1.0.0
