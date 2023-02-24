FROM nixos/nix
LABEL maintainer="Forest Keepers <Jeroen.knoops@philips.com>"

RUN nix-channel --update

RUN nix-env -iA nixos.openjdk18-bootstrap maven git wget curl jq bash

WORKDIR /app

ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport"

CMD ["/usr/bin/mvn"]
