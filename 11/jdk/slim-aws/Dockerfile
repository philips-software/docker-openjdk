FROM openjdk:11.0.1-jdk-slim
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
      python \
      python-pip \
      bash && \
    pip install --no-cache-dir awscli==$AWSCLI_VERSION && \
#    apt-get --purge autoremove python-pip -y && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean 

RUN echo 'source $HOME/aws/env/bin/activate' >> .bashrc && \
    echo 'complete -C aws_completer aws' >> .bashrc

ADD REPO .

ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport"
