#!/bin/bash

# Build docker image
docker build -t item-app:v1 .
# Showing list of docker images
docker images
# Tagging docker image into Github Packages format
docker tag item-app:v1 ghcr.io/dslite/item-app:v1
# Login to Github Packages using Personal Access Token
echo $TOKEN | docker login ghcr.io --username dslite --password-stdin
# Pushing into Github Packages Registry
docker push ghcr.io/dslite/item-app:v1