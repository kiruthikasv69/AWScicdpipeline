#!/bin/bash

# Set Docker registry and image info
DOCKER_REGISTRY_URL="your-registry-url"
DOCKER_USERNAME="your-username"
IMAGE_NAME="simple-python-flask-app:latest"
CONTAINER_NAME="simple-python-flask-app"

# Pull the latest image (optional if already pulled)
echo "Pulling latest image..."
docker pull $DOCKER_REGISTRY_URL/$DOCKER_USERNAME/$IMAGE_NAME

# Start the container
echo "Starting container..."
docker run -d \
  --name $CONTAINER_NAME \
  -p 80:5000 \
  $DOCKER_REGISTRY_URL/$DOCKER_USERNAME/$IMAGE_NAME
