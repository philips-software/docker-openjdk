#!/bin/bash

if [ "$#" -lt 2 ]; then
  echo "You need to provide a directory with a Dockerfile in it and a tag."
  exit 1
fi

builddir=$1
shift
basetag=$1
shift
tags=$@
currentdir=$(pwd)

project=`basename $currentdir`
commitsha=`git rev-parse --verify HEAD`

echo $currentdir

echo "Building docker image: $builddir with tag: $basetag"
echo "-------------------------------------------------------------------------"
cd $builddir

echo "https://github.com/philips-software/$project/tree/$commitsha" > REPO

docker build . -t philipssoftware/$basetag
while test ${#} -gt 0
do
  echo "Tagging philipssoftware/$basetag as philipssoftware/$1"
  docker tag philipssoftware/$basetag philipssoftware/$1
  shift
done
echo "============================================================================================"
echo "Finished building docker images: $builddir"
echo "============================================================================================"
