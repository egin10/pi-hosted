#!/bin/sh

# Download Docker Compose package
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose

# Docker Compose Installation
chmod +x ~/.docker/cli-plugins/docker-compose

docker compose version