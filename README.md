[![Build Status](https://travis-ci.com/philips-software/openjdk.svg?branch=master)](https://travis-ci.com/philips-software/openjdk)
[![Slack](https://philips-software-slackin.now.sh/badge.svg)](https://philips-software-slackin.now.sh)

# Docker images

This repo will contain docker images with openjdk

Current versions available:
```
.
├── 10
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
docker run -it --rm philipssoftware/openjdk:11 java -version
docker run -it --rm philipssoftware/openjdk:11-jre java -version
docker run -it --rm philipssoftware/openjdk:10 java -version
docker run -it --rm philipssoftware/openjdk:10-jre java -version
docker run -it --rm philipssoftware/openjdk:8 java -version
docker run -it --rm philipssoftware/openjdk:8-jre java -version
```

## Content

The images obviously contain openjdk, but also two other files:
- `REPO`
- `TAGS`

### REPO

This file has a url to the REPO with specific commit-sha of the build.
Example: 

```
$ docker run -it --rm philipssoftware/openjdk:11 cat REPO
https://github.com/philips-software/openjdk/tree/036ab9406533105e358ac768a51c1285cf523742
```

### TAGS

This contains all the similar tags at the point of creation. 

```
$ docker run -it --rm philipssoftware/openjdk:10 cat TAGS
openjdk:10 openjdk:10-jdk openjdk:10-jdk-slim openjdk:10.0.2-13-jdk-slim
```

You can use this to pin down a version of the container from an existing development build for production. When using `openjdk:10-jdk` for development. This ensures that you've got all security updates in your build. If you want to pin the version of your image down for production, you can use this file inside of the container to look for the most specific tag, the last one.

## Simple Tags

### openjdk
- `openjdk`, `openjdk:11`, `openjdk:11-jdk`, `openjdk:11-jdk-slim`, `openjdk:11.0.2-jdk-slim` [11/jdk/slim/Dockerfile](11/jdk/slim/Dockerfile)
- `openjdk:11-jre`, `openjdk:11-jre-slim`, `openjdk:11.0.2-jre-slim` [11/jre/slim/Dockerfile](11/jre/slim/Dockerfile)
- `openjdk:10`, `openjdk:10-jdk`, `openjdk:10-jdk-slim`, `openjdk:10.0.2-13-jdk-slim` [10/jdk/slim/Dockerfile](10/jdk/slim/Dockerfile)
- `openjdk:10-jre`, `openjdk:10-jre-slim`, `openjdk:10.0.2-13-jre-slim` [10/jre/slim/Dockerfile](10/jre/slim/Dockerfile)
- `openjdk:8`, `openjdk:8-jdk`, `openjdk:8-jdk-alpine`, `openjdk:8u191-jdk-alpine`, `openjdk:8u191-jdk-alpine3.9`
- `openjdk:8-jre`, `openjdk:8-jre-alpine`, `openjdk:8u191-jre-alpine`, `openjdk:8u191-jre-alpine3.9`
 [8/jre/alpine/Dockerfile](8/jre/alpine/Dockerfile)

### openjdk with aws-cli
- `openjdk:11-aws`, `openjdk:11-jdk-aws`, `openjdk:11-jdk-slim-aws`, `openjdk:11.0.2-jdk-slim-aws` [11/jdk/slim-aws/Dockerfile](11/jdk/slim-aws/Dockerfile)
- `openjdk:11-jre-aws`, `openjdk:11-jre-slim-aws`, `openjdk:11.0.2-jre-slim-aws` [11/jre/slim-aws/Dockerfile](11/jre/slim-aws/Dockerfile)
- `openjdk:10-aws`, `openjdk:10-jdk-aws`, `openjdk:10-jdk-slim-aws`, `openjdk:10.0.2-13-jdk-slim-aws` [10/jdk/slim-aws/Dockerfile](10/jdk/slim-aws/Dockerfile)
- `openjdk:10-jre-aws`, `openjdk:10-jre-slim-aws`, `openjdk:10.0.2-13-jre-slim-aws` [10/jre/slim-aws/Dockerfile](10/jre/slim-aws/Dockerfile)

## Why

> Why do we have our own docker image definitions?

We often need some tools in a container for checking some things. F.e. [jq](https://stedolan.github.io/jq/), [aws-cli](https://aws.amazon.com/cli/) and [curl](https://curl.haxx.se/).
We can install this every time we need a container, but having this baked into a container seems a better approach.

That's why we want our own docker file definitions.

## Issues

- If you have an issue: report it on the [issue tracker](https://github.com/philips-software/openjdk/issues)

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
