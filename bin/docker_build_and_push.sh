#!/bin/bash

if [ "$#" -lt 2 ]; then
  echo "You need to provide a directory with a Dockerfile in it and a tag."
  exit 1
fi

./bin/docker_build.sh $@
./bin/docker_push.sh $@
