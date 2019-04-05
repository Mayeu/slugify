# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Changed
- Ported the script to go

## [1.0.2] - 2018-09-29
### Fixed
- Ensure we actually have received data via `stdin` before processing

## [1.0.1] - 2018-09-28
### Fixed
- Also force the `LC_ALL` variable before using `sed` to correctly remove non-ascii char

## 1.0.0 - 2018-09-28
### Added
- The whole script that can slug in your shell

[Unreleased]: https://github.com/Mayeu/slugify/compare/v1.0.0...HEAD
[1.0.2]: https://github.com/Mayeu/slugify/compare/v1.0.1...v1.0.2
[1.0.1]: https://github.com/Mayeu/slugify/compare/v1.0.0...v1.0.1
