FROM openjdk:11.0.11-jdk-slim
LABEL maintainer="Forest Keepers <Jeroen.knoops@philips.com>"

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

ENV AWSCLI_VERSION 1.17.7

RUN apt-get update && \
    apt-get install -y \
      git \
      wget \
      curl \
      jq \
      python \
      python-pip \
      netcat-openbsd \
      bash && \
    pip install --no-cache-dir awscli==$AWSCLI_VERSION && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean 

ADD REPO .
ADD TAGS .

ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport"
