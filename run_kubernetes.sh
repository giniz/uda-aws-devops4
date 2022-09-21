#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
deployment=uda-lab3
# Step 1:
# This is your Docker ID/path
dockerpath=giniz/uda-devops3:v0.1

# Step 2
# Run the Docker Hub container with kubernetes
printf "Create deployment: $deployment\n\n"
kubectl create deploy $deployment --image=$dockerpath

# Step 3:
# List kubernetes pods
printf "Wait for $deployment to be ready\n\n"
kubectl get pods
kubectl rollout status deployment $deployment
kubectl get pods

# Step 4:
# Forward the container port to a host
printf "Forward port for $deployment\n\n"
kubectl port-forward deployment/$deployment --address 0.0.0.0 8000:80 &
printf "Listening for logs of $deployment\n\n"
kubectl logs -f deployment/$deployment
