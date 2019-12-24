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
│   │   └── slim-aws
│   │       └── Dockerfile
│   └── jre
│       ├── slim
│       │   └── Dockerfile
│       └── slim-aws
│           └── Dockerfile
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

The images obviously contain openjdk, but also two other files:
- `REPO`
- `TAGS`

### REPO

This file has a url to the REPO with specific commit-sha of the build.
Example: 

```
$ docker run philipssoftware/openjdk:11 cat REPO
https://github.com/philips-software/docker-openjdk/tree/facb2271e5a563e5d6f65ca3f475cefac37b8b6c
```

### TAGS

This contains all the similar tags at the point of creation. 

```
$ docker run philipssoftware/openjdk:11 cat TAGS
openjdk openjdk:11 openjdk:11-jdk openjdk:11-jdk-slim openjdk:11.0.2-jdk-slim
```

You can use this to pin down a version of the container from an existing development build for production. When using `openjdk:11` for development. This ensures that you've got all security updates in your build. If you want to pin the version of your image down for production, you can use this file inside of the container to look for the most specific tag, the last one.

## Simple Tags

### openjdk
- `openjdk`, `openjdk:11`, `openjdk:11-jdk`, `openjdk:11-jdk-slim`, `openjdk:11.0.5-jdk-slim` [11/jdk/slim/Dockerfile](11/jdk/slim/Dockerfile)
- `openjdk:11-jre`, `openjdk:11-jre-slim`, `openjdk:11.0.5-jre-slim` [11/jre/slim/Dockerfile](11/jre/slim/Dockerfile)
- `openjdk:8`, `openjdk:8-jdk`, `openjdk:8-jdk-alpine`, `openjdk:8u201-jdk-alpine`, `openjdk:8u201-jdk-alpine3.9` [8/jdk/alpine/Dockerfile](8/jdk/alpine/Dockerfile)
- `openjdk:8-jre`, `openjdk:8-jre-alpine`, `openjdk:8u201-jre-alpine`, `openjdk:8u201-jre-alpine3.9`
 [8/jre/alpine/Dockerfile](8/jre/alpine/Dockerfile)

### openjdk with aws-cli
- `openjdk:11-aws`, `openjdk:11-jdk-aws`, `openjdk:11-jdk-slim-aws`, `openjdk:11.0.5-jdk-slim-aws` [11/jdk/slim-aws/Dockerfile](11/jdk/slim-aws/Dockerfile)
- `openjdk:11-jre-aws`, `openjdk:11-jre-slim-aws`, `openjdk:11.0.5-jre-slim-aws` [11/jre/slim-aws/Dockerfile](11/jre/slim-aws/Dockerfile)

### openjdk with docker
- `openjdk:11-docker`, `openjdk:11-jdk-docker`, `openjdk:11-jdk-slim-docker`, `openjdk:11.0.5-jdk-slim-docker` [11/jdk/slim-docker/Dockerfile](11/jdk/slim-docker/Dockerfile) 

## Why

> Why do we have our own docker image definitions?

We often need some tools in a container for checking some things. F.e. [jq](https://stedolan.github.io/jq/), [aws-cli](https://aws.amazon.com/cli/) and [curl](https://curl.haxx.se/).
We can install this every time we need a container, but having this baked into a container seems a better approach.

That's why we want our own docker file definitions.

## Issues

- If you have an issue: report it on the [issue tracker](https://github.com/philips-software/docker-openjdk/issues)

## Author

- Jeroen Knoops <jeroen.knoops@philips.com>
- Heijden, Remco van der <remco.van.der.heijden@philips.com>

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
