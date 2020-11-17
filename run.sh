#!/bin/bash

volumeName=postgresqldata
existentVolume=$(docker volume ls -f name=$volumeName --format "{{.Name}}")

if [[ "$existentVolume" == "$volumeName" ]];
  then
    docker volume create "$volumeName"
fi

docker run -d \
    --name docker-postgresql-1 \
    -e POSTGRES_PASSWORD=1 \
    -v "$volumeName":/var/lib/postgresql/data \
    -p 5433:5432 \
    postgres
