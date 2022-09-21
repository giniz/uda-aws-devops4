#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build -t uda-devops3:v0.1 -f Dockerfile .

# List docker images
docker images

# Run flask app
docker run -dp 8000:80/tcp --name test_app uda-devops3:v0.1
