[![Build Status](https://github.com/philips-software/docker-openjdk/workflows/build/badge.svg)](https://github.com/philips-software/docker-openjdk/actions/)
[![Slack](https://philips-software-slackin.now.sh/badge.svg)](https://philips-software-slackin.now.sh)

# Docker images

This repo will contain docker images with openjdk

Current versions available:
```
.
├── 11
│   ├── jdk
│   │   ├── slim
│   │   │   └── Dockerfile
│   │   ├── slim-aws
│   │   │   └── Dockerfile
│   │   ├── zulu
│   │   │   └── Dockerfile
│   │   └── zulu-docker
│   │       └── Dockerfile
│   └── jre
│       ├── slim
│       │   └── Dockerfile
│       └── slim-aws
│           └── Dockerfile
├── 8
│   ├── jdk
│   │   └── alpine
│   │       └── Dockerfile
│   └── jre
│       └── alpine
│           └── Dockerfile
```
## Usage

Images can be found on [https://hub.docker.com/r/philipssoftware/openjdk/](https://hub.docker.com/r/philipssoftware/openjdk/).

```
docker run philipssoftware/openjdk:11 java -version
docker run philipssoftware/openjdk:11-jre java -version
docker run philipssoftware/openjdk:8 java -version
docker run philipssoftware/openjdk:8-jre java -version
```

## Content

We're signing these containers and creating the SLSA-provenance and SBOM for this project.
You can check the signature, SBOM and SLSA-provenance by installing [Cosign](https://github.com/sigstore/cosign) locally, get the `cosign.pub` file from the repository and perform the following steps:

### Check signature

The containers are signed with Cosign. The public key can be found in the root of the repository in a file: `cosign.pub`.

```bash
cosign verify --key cosign.pub philipssoftware/openjdk:11-jdk-zulu
```

### Check SBOM

The SBOM is created with [Syft](https://github.com/anchore/syft) and is attached to the containers. You can verify the attestation with Cosign by executing the following command:

```bash
cosign verify-attestation --key cosign.pub philipssoftware/openjdk:11-jdk-zulu | jq '.payload |= @base64d | .payload | fromjson | select( .predicateType=="https://spdx.dev/Document" ) | .predicate.Data | fromjson | .'
```

### Check SLSA-Provenance file

The [SLSA-Provenance](https://slsa.dev) file is created with [SLSA-provenance-action](https://github.com/philips-labs/slsa-provenance-action) and is attached to the containers. You can verify the attestation with Cosign by executing the following command:

```bash
cosign verify-attestation --key cosign.pub philipssoftware/openjdk:11-jdk-zulu | jq '.payload |= @base64d | .payload | fromjson | select( .predicateType=="https://slsa.dev/provenance/v0.2" ) |  .'
```

### Other files

The images obviously contain openjdk, but also two other files:
- `REPO`
- `TAGS`

This was a way to provide some provenance on the containers. This is now deprecated in favor of the attestations mentioned above.

#### REPO

This file has a url to the REPO with specific commit-sha of the build.
Example: 

```
$ docker run philipssoftware/openjdk:11 cat REPO
https://github.com/philips-software/docker-openjdk/tree/facb2271e5a563e5d6f65ca3f475cefac37b8b6c
```

#### TAGS

This contains all the similar tags at the point of creation. 

```
$ docker run philipssoftware/openjdk:11 cat TAGS
openjdk openjdk:11 openjdk:11-jdk openjdk:11-jdk-slim openjdk:11.0.12-jdk-slim
```

You can use this to pin down a version of the container from an existing development build for production. When using `openjdk:11` for development. This ensures that you've got all security updates in your build. If you want to pin the version of your image down for production, you can use this file inside of the container to look for the most specific tag, the last one.

## Simple Tags

### openjdk
- `openjdk`, `openjdk:11`, `openjdk:11-jdk`, `openjdk:11-jdk-slim`, `openjdk:11.0.12-jdk-slim` [11/jdk/slim/Dockerfile](11/jdk/slim/Dockerfile)
- `openjdk:11-zulu`, `openjdk:11-jdk-zulu`, `openjdk:11-jdk-zulu`, `openjdk:11.0.12-jdk-zulu` [11/jdk/zulu/Dockerfile](11/jdk/zulu/Dockerfile)
- `openjdk:11-jre`, `openjdk:11-jre-slim`, `openjdk:11.0.12-jre-slim` [11/jre/slim/Dockerfile](11/jre/slim/Dockerfile)
- `openjdk:8`, `openjdk:8-jdk`, `openjdk:8-jdk-alpine`, `openjdk:8u292-jdk-alpine` [8/jdk/alpine/Dockerfile](8/jdk/alpine/Dockerfile)
- `openjdk:8-jre`, `openjdk:8-jre-alpine`, `openjdk:8u292-jre-alpine` [8/jre/alpine/Dockerfile](8/jre/alpine/Dockerfile)

### openjdk with aws-cli
- `openjdk:11-aws`, `openjdk:11-jdk-aws`, `openjdk:11-jdk-slim-aws`, `openjdk:11.0.12-jdk-slim-aws` [11/jdk/slim-aws/Dockerfile](11/jdk/slim-aws/Dockerfile)
- `openjdk:11-jre-aws`, `openjdk:11-jre-slim-aws`, `openjdk:11.0.12-jre-slim-aws` [11/jre/slim-aws/Dockerfile](11/jre/slim-aws/Dockerfile)

### openjdk with docker
- `openjdk:11-zulu-docker`, `openjdk:11-jdk-zulu-docker`, `openjdk:11-jdk-zulu-docker`, `openjdk:11.0.12-jdk-zulu-docker` [11/jdk/zulu-docker/Dockerfile](11/jdk/zulu-docker/Dockerfile)

## Why

> Why do we have our own docker image definitions?

We often need some tools in a container for checking some things. F.e. [jq](https://stedolan.github.io/jq/), [aws-cli](https://aws.amazon.com/cli/) and [curl](https://curl.haxx.se/).
We can install this every time we need a container, but having this baked into a container seems a better approach.

That's why we want our own docker file definitions.

## Issues

- If you have an issue: report it on the [issue tracker](https://github.com/philips-software/docker-openjdk/issues)

## Author

- Jeroen Knoops <jeroen.knoops@philips.com>

## License

License is MIT. See [LICENSE file](LICENSE.md)

## Philips Forest

This module is part of the Philips Forest.

```
                                                     ___                   _
                                                    / __\__  _ __ ___  ___| |_
                                                   / _\/ _ \| '__/ _ \/ __| __|
                                                  / / | (_) | | |  __/\__ \ |_
                                                  \/   \___/|_|  \___||___/\__|  

                                                                 Infrastructure
```

Talk to the forestkeepers in the `docker-images`-channel on Slack.

[![Slack](https://philips-software-slackin.now.sh/badge.svg)](https://philips-software-slackin.now.sh)
