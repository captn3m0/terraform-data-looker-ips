# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Removed
- Removes Montreal and Sydney GCP regions, as they are no longer on the [official list](https://docs.looker.com/setup-and-management/enabling-secure-db).

## [1.3.0][1.3.0] - 2020-07-12

### Added
- Adds support for new EKS hosting

## [1.2.3][1.2.3] - 2020-06-21

### Added
- New Looker IP for GCP/Canada region

### Fixed
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

[unreleased]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.1.2...HEAD
[1.1.2]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.1.2...1.1.1
[1.1.1]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.1.1...1.1.0

## [1.1.0][1.1.0] - 2019-10-25

### Added

-   Adds support for CIDRs for various regions.

## [1.0.0][1.0.0] - 2019-10-25

## Added

-   Initial Release

[unreleased]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.3.0...HEAD
[1.3.0]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.2.3...1.3.0
[1.2.2]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.2.1...1.2.2
[1.2.1]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.2.1...1.2.2
[1.2.1]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.2.0...1.2.1
[1.2.0]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.1.2...1.2.0
[1.1.2]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.1.1...1.1.1
[1.1.2]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.1.1...1.1.2
[1.1.1]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.1.0...1.1.1
[1.1.0]: https://github.com/captn3m0/terraform-data-looker-ips/compare/1.0.0...1.1.0
[1.0.0]: https://github.com/captn3m0/terraform-data-looker-ips/releases/tag/1.0.0
