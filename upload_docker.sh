#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=giniz/uda-devops3:v0.1

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u giniz
docker tag uda-devops3:v0.1 $dockerpath

# Push image to a docker repository
docker push $dockerpath
