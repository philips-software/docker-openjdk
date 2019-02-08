# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project uses the version of main tool as main version number .

## [Unreleased]

### Changed
- Add bash to openjdk 8 
- Remove openjdk 10
- Upgrade openjdk jdk to 11.0.2-jdk-slim
- Upgrade openjdk jre to 11.0.2-jre-slim
- Upgrade openjdk jre to 8u191 alpine 3.9 
- Add openjdk jdk to 8u191 alpine 3.9 
- Upgrade aws cli to 1.16.99 

### Added
- Add openjdk 8
- Add openjdk 10
- Add openjdk 11
- Parallel Travis builds
- Add REPO in dockerfile with reference to github commit
- Push docker images to https://hub.docker.com/r/philipssoftware/openjdk/
- Remove AWS-cli from default images. Appended all images with `-aws` for images with AWS-cli 

[Unreleased]: https://github.com/philips-software/openjdk
