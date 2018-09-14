FROM openjdk:8u171-jre-alpine3.8
MAINTAINER Forest Keepers <Jeroen.knoops@philips.com>

RUN apk --no-cache add curl jq openssl net-tools && rm -rf /var/cache/apk/*

RUN addgroup -S java && \
  adduser -S -G java java

RUN mkdir /app
RUN chown java:java /app

USER java

WORKDIR /app

# Define default command.
CMD ["/bin/sh"]
