FROM openjdk:11.0.1-jre-slim
MAINTAINER Forest Keepers

RUN apt-get update && \
    apt-get install -y \
      curl \
      jq \
      openssl \
      net-tools \
      wget && \
    rm -rf /var/lib/apt/lists/*

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
