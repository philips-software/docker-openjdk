#!/bin/bash

cd `dirname "$0"`

./docker_build.sh 11/jre/slim openjdk:11-jre openjdk:11-jre-slim
./docker_build.sh 11/jre/slim-aws openjdk:11-jre-aws openjdk:11-jre-slim-aws
./docker_build.sh 11/jdk/slim openjdk openjdk:11 openjdk:11-jdk openjdk:11-jdk-slim
./docker_build.sh 11/jdk/slim-aws openjdk:11-aws openjdk:11-jdk-aws openjdk:11-jdk-slim-aws
./docker_build.sh 10/jre/slim openjdk:10-jre openjdk:10-jre-slim
./docker_build.sh 10/jre/slim-aws openjdk:10-jre-aws openjdk:10-jre-slim-aws
./docker_build.sh 10/jdk/slim openjdk:10 openjdk:10-jdk openjdk:10-jdk-slim
./docker_build.sh 10/jdk/slim-aws openjdk:10-aws openjdk:10-jdk-aws openjdk:10-jdk-slim-aws
./docker_build.sh 8/jre/alpine openjdk:8 openjdk:8-jre openjdk:8-jre-alpine
