FROM openjdk:10.0.2-13-jdk-slim
MAINTAINER Forest Keepers

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y \
      bzip2 \
      unzip \
      git \
      curl \
      wget \
      curl \
      python-pip \
      bash

ENV AWSCLI_VERSION 1.15.4

RUN pip install awscli==$AWSCLI_VERSION

RUN echo 'source $HOME/aws/env/bin/activate' >> .bashrc && \
    echo 'complete -C aws_completer aws' >> .bashrc

ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport"
