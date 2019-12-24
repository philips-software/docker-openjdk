# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project uses the version of main tool as main version number .

## [Unreleased]

### Changed
- Upgrade openjdk jdk to 11.0.5-jdk-slim
- Upgrade openjdk jre to 11.0.5-jre-slim
- Upgrade aws cli to 1.16.237
- Moves ci to github actions
- Upgrade openjdk jdk to 11.0.3-jdk-slim
- Upgrade openjdk jre to 11.0.3-jre-slim
- Upgrade openjdk jre to 8u201 alpine 3.9 
- Add openjdk jdk to 8u201 alpine 3.9 
- Upgrade aws cli to 1.16.140 

- Uses common build scripts 1.0.1
- Add bash to openjdk 8 
- Remove openjdk 10
- Upgrade openjdk jdk to 11.0.2-jdk-slim
- Upgrade openjdk jre to 11.0.2-jre-slim
- Upgrade openjdk jre to 8u191 alpine 3.9 
- Add openjdk jdk to 8u191 alpine 3.9 
- Upgrade aws cli to 1.16.99 

### Added
- Add CODEOWNERS
- Add openjdk 8
- Add openjdk 10
- Add openjdk 11
- Parallel Travis builds
- Add REPO in dockerfile with reference to github commit
- Push docker images to https://hub.docker.com/r/philipssoftware/openjdk/
- Remove AWS-cli from default images. Appended all images with `-aws` for images with AWS-cli 
- #22 - add docker for open-jdk-11

[Unreleased]: https://github.com/philips-software/docker-openjdk
