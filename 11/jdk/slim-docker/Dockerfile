FROM openjdk:11.0.5-jdk-slim
MAINTAINER Forest Keepers <Jeroen.knoops@philips.com>

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y \
      git \
      wget \
      curl \
      bash && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh && \
    rm get-docker.sh

RUN mkdir /app

WORKDIR /app

ADD REPO .
ADD TAGS .

ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport"
