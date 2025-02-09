#!/bin/bash

# Define the image name and tag
IMAGE_NAME="siemens_rocky_linux"
IMAGE_TAG="latest"

# Run a Rocky Linux container
docker run -it --rm \
    -v /tools:/tools \
    -v $(pwd):$(pwd) \
    -u $(id -u):$(id -g) \
    -e PS1="${IMAGE_NAME}_$(whoami):\w$ " \
    --workdir $(pwd) \
    --name ${IMAGE_NAME}_$(whoami) \
    ${IMAGE_NAME}:${IMAGE_TAG}