# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased][unreleased]

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

[unreleased]: https://github.com/captn3m0/terraform-data-looker-ips/compare/v1.3.5...HEAD
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
