FROM openjdk:11.0.12-jdk-slim
LABEL maintainer="Forest Keepers <Jeroen.knoops@philips.com>"

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

ENV AWSCLI_VERSION 2.2.35

RUN apt-get update && \
    apt-get install -y \
      git \
      wget \
      curl \
      jq \
      netcat-openbsd \
      bash \
      unzip && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-$AWSCLI_VERSION.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    rm awscliv2.zip && \
    ./aws/install && \
    rm -rf aws

ADD REPO .
ADD TAGS .

ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport"
