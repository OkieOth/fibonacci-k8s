#!/bin/bash

scriptPos=${0%/*}

image_ext=mcr


imageBase=fibonacci_dotnet_${image_ext}

imageName="$imageBase"

echo "I am going to create: $imageName"

if docker build -t $imageName . -f Dockerfile_${image_ext}; then
    echo -en "\033[1;34m  image created: $imageName \033[0m\n"
else
    echo -en "\033[1;31m  error while create image: $imageName \033[0m\n"
fi