#!/bin/bash

# fail if there's any error
set -eu

# build docker image
docker build -f $IMAGE_TAG/Dockerfile -t $IMAGE_TAG .
