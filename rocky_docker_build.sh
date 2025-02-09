#!/bin/bash

# Define the image name and tag
IMAGE_NAME="siemens_rocky_linux"
IMAGE_TAG="latest"

# Define the Dockerfile location
DOCKERFILE_PATH="."

# Build the Docker image
docker build --no-cache --pull -t ${IMAGE_NAME}:${IMAGE_TAG} ${DOCKERFILE_PATH}

# Check if the build was successful
if [ $? -eq 0 ]; then
    echo "Docker image ${IMAGE_NAME}:${IMAGE_TAG} built successfully."
else
    echo "Failed to build Docker image ${IMAGE_NAME}:${IMAGE_TAG}."
    exit 1
fi