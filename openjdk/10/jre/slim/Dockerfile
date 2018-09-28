FROM openjdk:10.0.2-13-slim
MAINTAINER Forest Keepers

RUN apt-get update && \
    apt-get install -y \
    curl \
    jq \
    openssl \
    net-tools \
    python-pip \
    wget

ENV AWSCLI_VERSION 1.15.4

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
# Define default command.
CMD ["/bin/sh"]
