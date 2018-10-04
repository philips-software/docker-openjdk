#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "You need to provide a directory with a Dockerfile in it."
  exit 1
fi

builddir=$1
tag=$2
currentdir=$(pwd)

echo $currentdir

echo "Building docker image: $builddir"
echo "-------------------------------------------------------------------------"
cd $builddir
docker build .
echo "============================================================================================"
echo "Finished building docker image: $builddir"
echo "============================================================================================"
