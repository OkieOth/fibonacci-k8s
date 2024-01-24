#!/bin/bash

scriptPos=${0%/*}



case "$1" in
  debian)
    image_ext=debian
    ;;
  minimal)
    image_ext=minimal
    ;;
  *)
    image_ext=minimal
    ;;
esac



imageBase=fibonacci_quarkus_${image_ext}

imageName="$imageBase"

echo "I am going to create: $imageName"

export DOCKER_BUILDKIT=1

if docker build -t $imageName . -f Dockerfile_${image_ext}; then
    echo -en "\033[1;34m  image created: $imageName \033[0m\n"
else
    echo -en "\033[1;31m  error while create image: $imageName \033[0m\n"
fi