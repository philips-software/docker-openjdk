FROM openjdk:11.0.6-jre-slim
LABEL maintainer="Forest Keepers <Jeroen.knoops@philips.com>"

RUN apt-get update && \
    apt-get install -y \
      curl \
      jq \
      openssl \
      net-tools \
      python-pip \
      netcat-openbsd \
      wget && \
    rm -rf /var/lib/apt/lists/*

ENV AWSCLI_VERSION 1.16.237

RUN pip install awscli==$AWSCLI_VERSION

RUN addgroup --system java && \
    adduser --system --group java

RUN mkdir /app
RUN chown java:java /app

USER java

WORKDIR /app

ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport"

ADD REPO .
ADD TAGS .

# Define default command.
CMD ["/bin/sh"]
