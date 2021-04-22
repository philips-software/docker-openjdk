FROM azul/zulu-openjdk-alpine:8u292-jre
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
