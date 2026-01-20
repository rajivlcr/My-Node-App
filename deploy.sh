#!/usr/bin/env bash

# Setting up environment

echo "Setting up environment..."
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 136399769951.dkr.ecr.ap-south-1.amazonaws.com

docker build -t 136399769951.dkr.ecr.ap-south-1.amazonaws.com/my-node-app:latest .

docker push 136399769951.dkr.ecr.ap-south-1.amazonaws.com/my-node-app:latest

# Cleanup

docker image rm 136399769951.dkr.ecr.ap-south-1.amazonaws.com/my-node-app:latest