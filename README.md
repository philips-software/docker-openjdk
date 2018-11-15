[![Build Status](https://travis-ci.com/philips-software/openjdk.svg?branch=master)](https://travis-ci.com/philips-software/openjdk)
[![Slack](https://philips-software-slackin.now.sh/badge.svg)](https://philips-software-slackin.now.sh)

# Docker images

This repo will contain docker images

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
│   └── jre
│       └── alpine
│           └── Dockerfile```
## Usage

Images can be found on [https://hub.docker.com/r/philipssoftware/openjdk/](https://hub.docker.com/r/philipssoftware/openjdk/).

```
docker run -it --rm philipssoftware/openjdk:11 java -version
docker run -it --rm philipssoftware/openjdk:11-jre java -version
docker run -it --rm philipssoftware/openjdk:10 java -version
docker run -it --rm philipssoftware/openjdk:10-jre java -version
docker run -it --rm philipssoftware/openjdk:8 java -version
```

## Simple Tags

### openjdk
- `openjdk`, `openjdk:11`, `openjdk:11-jdk`, `openjdk:11-jdk-slim` [11/jdk/slim/Dockerfile](11/jdk/slim/Dockerfile)
- `openjdk:11-jre`, `openjdk:11-jre-slim` [11/jre/slim/Dockerfile](11/jre/slim/Dockerfile)
- `openjdk:10`, `openjdk:10-jdk`, `openjdk:10-jdk-slim` [10/jdk/slim/Dockerfile](10/jdk/slim/Dockerfile)
- `openjdk:10-jre`, `openjdk:10-jre-slim` [10/jre/slim/Dockerfile](10/jre/slim/Dockerfile)
- `openjdk:8`, `openjdk:8-jre`, `openjdk:8-jre-alpine` [8/jre/alpine/Dockerfile](8/jre/alpine/Dockerfile)

### openjdk with aws-cli
- `openjdk:11-aws`, `openjdk:11-jdk-aws`, `openjdk:11-jdk-slim-aws` [11/jdk/slim-aws/Dockerfile](11/jdk/slim-aws/Dockerfile)
- `openjdk:11-jre-aws`, `openjdk:11-jre-slim-aws` [11/jre/slim-aws/Dockerfile](11/jre/slim-aws/Dockerfile)
- `openjdk:10-aws`, `openjdk:10-jdk-aws`, `openjdk:10-jdk-slim-aws` [10/jdk/slim-aws/Dockerfile](10/jdk/slim-aws/Dockerfile)
- `openjdk:10-jre-aws`, `openjdk:10-jre-slim-aws` [10/jre/slim-aws/Dockerfile](10/jre/slim-aws/Dockerfile)

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
