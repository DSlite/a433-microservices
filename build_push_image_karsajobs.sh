#!/bin/bash

# Building karsajobs image
docker build -t ghcr.io/dslite/karsajobs:latest .

# Login to ghcr.io
echo $TOKEN | docker login ghcr.io --username dslite --password-stdin

# Pushing karsajobs image
docker push ghcr.io/dslite/karsajobs:latest

