#!/bin/bash

# Building Karsajobs-UI image
docker build -t ghcr.io/dslite/karsajobs-ui:latest .

# Login to ghcr.io
echo $TOKEN | docker login ghcr.io --username dslite --password-stdin

# Pushing Karsajob-UI image
docker push ghcr.io/dslite/karsajobs-ui:latest
