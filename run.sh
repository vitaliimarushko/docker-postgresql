#!/bin/bash

# create a volume if it doesn't exist
volumeName=postgresqldata
existentVolume=$(docker volume ls -f name=$volumeName --format "{{.Name}}")

if [[ "$existentVolume" == "$volumeName" ]];
  then
    docker volume create "$volumeName"
fi

# kill old container
docker stop docker-postgresql-1
docker rm docker-postgresql-1

# run a new container
docker run -d \
  --name docker-postgresql-1 \
  -e POSTGRES_PASSWORD=1 \
  -v "$volumeName":/var/lib/postgresql/data \
  -p 5433:5432 \
  postgres:alpine
