#!/usr/bin/env bash

NAME="crossbar-prometheus-exporter"
DOCKER_HUB_USER="jegger"
VERSION=1.1

# Create docker image
docker build -t $NAME .

# Push image to hub
docker tag $NAME $DOCKER_HUB_USER/$NAME:$VERSION
docker push $DOCKER_HUB_USER/$NAME:$VERSION
