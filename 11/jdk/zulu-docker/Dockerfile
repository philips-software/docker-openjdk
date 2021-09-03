FROM docker:20.10.8 
LABEL maintainer="Forest Keepers <Jeroen.knoops@philips.com>"

RUN apk --no-cache add \
      curl \
      jq \
      git \
      wget \
      openssl \
      bash \
      netcat-openbsd \
      net-tools && \
    rm -rf /var/cache/apk/*

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV JAVA_HOME=/usr/lib/jvm/zulu11-ca
RUN wget --quiet https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub -P /etc/apk/keys/ && \
    echo "https://repos.azul.com/zulu/alpine" >> /etc/apk/repositories && \
    apk --no-cache add zulu11-jdk=11.0.12-r1

RUN addgroup -S java && \
  adduser -S -G java java

RUN mkdir /app
RUN chown java:java /app

WORKDIR /app

ADD REPO .
ADD TAGS .

ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport"
