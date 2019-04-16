FROM openjdk:11.0.3-jdk-slim
MAINTAINER Forest Keepers <Jeroen.knoops@philips.com>

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

ENV AWSCLI_VERSION 1.16.140

RUN apt-get update && \
    apt-get install -y \
      git \
      wget \
      curl \
      python \
      python-pip \
      bash && \
    pip install --no-cache-dir awscli==$AWSCLI_VERSION && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean 

ADD REPO .
ADD TAGS .

ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport"
