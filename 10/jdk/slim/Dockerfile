FROM openjdk:10.0.2-13-jdk-slim
MAINTAINER Forest Keepers

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

ENV AWSCLI_VERSION 1.16.47

RUN apt-get update && \
    apt-get install -y \
      bzip2 \
      unzip \
      git \
      wget \
      curl \
      bash && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean 

ADD REPO .

ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport"
