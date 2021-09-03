FROM openjdk:11.0.12-jre-slim
LABEL maintainer="Forest Keepers <Jeroen.knoops@philips.com>"

RUN apt-get update && \
    apt-get install -y \
      curl \
      jq \
      openssl \
      netcat-openbsd \
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
ADD TAGS .

# Define default command.
CMD ["/bin/sh"]
