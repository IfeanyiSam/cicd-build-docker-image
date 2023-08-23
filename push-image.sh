#!/bin/bash

# fail if there's any error
set -eu

# login to your docker hub account
docker login --username $DOCKER_HUB_USERNAME --password $DOCKER_HUB_PASSWORD

#use the docker tag command to give the image a name
docker tag $IMAGE_TAG $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME

# push image to docker hub repository
docker push $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME 