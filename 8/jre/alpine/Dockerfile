FROM openjdk:8u201-jre-alpine3.9
LABEL maintainer="Forest Keepers <Jeroen.knoops@philips.com>"

RUN apk --no-cache add \
      curl \
      jq \
      openssl \
      netcat-openbsd \
      net-tools && \
    rm -rf /var/cache/apk/*

RUN addgroup -S java && \
  adduser -S -G java java

RUN mkdir /app
RUN chown java:java /app

USER java

WORKDIR /app

ADD REPO .
ADD TAGS .

# Define default command.
CMD ["/bin/sh"]
