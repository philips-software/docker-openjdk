FROM openjdk:10.0.2-13-slim
MAINTAINER Forest Keepers <Jeroen.knoops@philips.com>

RUN apt-get update && \
    apt-get install -y \
      curl \
      jq \
      openssl \
      net-tools \
      wget && \
    rm -rf /var/lib/apt/lists/*

RUN addgroup --system java && \
    adduser --system --group java

RUN mkdir /app
RUN chown java:java /app

USER java

WORKDIR /app

ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport"

ADD REPO .

# Define default command.
CMD ["/bin/sh"]
