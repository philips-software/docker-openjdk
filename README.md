[![Build Status](https://travis-ci.com/philips-software/docker-images.svg?token=rJGEzBK71KGFbNJFk2Ws&branch=master)](https://travis-ci.com/philips-software/openjdk)
[![Slack](https://philips-software-slackin.now.sh/badge.svg)](https://philips-software-slackin.now.sh)

# Docker images

This repo will contain docker images

Current versions available:
```
.
├── 10
│   ├── jdk
│   │   └── slim
│   │       └── Dockerfile
│   └── jre
│       └── slim
│           └── Dockerfile
├── 8
│   └── jre
│       └── alpine
│           └── Dockerfile
```
## Usage

```
docker run -it --rm philipssoftware/openjdk:10 java -version
docker run -it --rm philipssoftware/openjdk:10-jre java -version
docker run -it --rm philipssoftware/openjdk:8 java -version
```

## Simple Tags

### openjdk
- `openjdk:10`, `openjdk:10-jdk`, `openjdk:10-jdk-slim` [openjdk/10/jdk/slim/Dockerfile](openjdk/10/jdk/slim/Dockerfile)
- `openjdk:10-jre`, `openjdk:10-jre-slim` [openjdk/10/jre/slim/Dockerfile](openjdk/10/jre/slim/Dockerfile)
- `openjdk:8`, `openjdk:8-jre`, `openjdk:8-jre-alpine` [openjdk/8/jre/alpine/Dockerfile](openjdk/8/jre/alpine/Dockerfile)

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

Talk to the forestkeepers in the `openjdk`-channel on Slack.

[![Slack](https://philips-software-slackin.now.sh/badge.svg)](https://philips-software-slackin.now.sh)
