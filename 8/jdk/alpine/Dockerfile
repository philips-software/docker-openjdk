FROM azul/zulu-openjdk-alpine:8u322
LABEL maintainer="Forest Keepers <Jeroen.knoops@philips.com>"

ARG MAVEN_VERSION="3.9.3"
ARG USER_HOME_DIR="/root"
ARG SHA=400fc5b6d000c158d5ee7937543faa06b6bda8408caa2444a9c947c21472fde0f0b64ac452b8cec8855d528c0335522ed5b6c8f77085811c7e29e1bedbb5daa2
ARG BASE_URL="https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries"

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

RUN addgroup -S java && \
  adduser -S -G java java

RUN mkdir /app
RUN chown java:java /app

RUN mkdir -p /usr/share/maven \
    && curl -Lso  /tmp/maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
    && echo "${SHA}  /tmp/maven.tar.gz" | sha512sum -c - \
    && tar -xzf /tmp/maven.tar.gz -C /usr/share/maven --strip-components=1 \
    && rm -v /tmp/maven.tar.gz \
    && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "${USER_HOME_DIR}/.m2"

WORKDIR /app

ADD REPO .
ADD TAGS .

# Define default command.
CMD ["/bin/sh"]
