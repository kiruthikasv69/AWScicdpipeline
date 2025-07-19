#!/bin/bash

# Stop and remove existing container
CONTAINER_NAME="simple-python-flask-app"

echo "Stopping existing container (if running)..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true
