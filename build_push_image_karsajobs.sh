#!/bin/bash

docker build -t ghcr.io/dslite/karsajobs:latest .

echo $TOKEN | docker login ghcr.io --username dslite --password-stdin

docker push ghcr.io/dslite/karsajobs:latest
