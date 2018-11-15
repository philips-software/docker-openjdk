FROM openjdk:11.0.1-jre-slim
MAINTAINER Forest Keepers

RUN apt-get update && \
    apt-get install -y \
      curl \
      jq \
      openssl \
      net-tools \
      python-pip \
      wget && \
    rm -rf /var/lib/apt/lists/*

ENV AWSCLI_VERSION 1.16.47

RUN pip install awscli==$AWSCLI_VERSION

RUN echo 'source $HOME/aws/env/bin/activate' >> .bashrc && \
    echo 'complete -C aws_completer aws' >> .bashrc

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
