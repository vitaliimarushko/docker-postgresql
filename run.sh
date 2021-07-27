#!/bin/bash

containerName=docker-postgresql-1
volumeName=postgresqldata

# create a volume if it doesn't exist
existentVolume=$(docker volume ls -f name=$volumeName --format "{{.Name}}")

if [[ "$existentVolume" != "$volumeName" ]];
  then
    docker volume create "$volumeName"
fi

# kill the old container
docker stop "$containerName"
docker rm "$containerName"

# run a new container
docker run -d \
  --name "$containerName" \
  -e POSTGRES_PASSWORD=1 \
  -v "$volumeName":/var/lib/postgresql/data \
  -p 5433:5432 \
  postgres:alpine
