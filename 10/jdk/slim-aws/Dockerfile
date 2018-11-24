FROM openjdk:10.0.2-13-jdk-slim
MAINTAINER Forest Keepers <Jeroen.knoops@philips.com>

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

ENV AWSCLI_VERSION 1.16.47

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

RUN addgroup --system java && \
    adduser --system --group java

RUN mkdir /app
RUN chown java:java /app

USER java

WORKDIR /app

ADD REPO .
ADD TAGS .

ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport"
