# Requirements

Install the following dependencies:
 - [Docker](https://docs.docker.com/engine/install/debian/#install-using-the-repository): ^19.x
 - [PostgreSQL](https://www.postgresql.org/download/linux) (optional): ^13.x

# Deployment

1. Add required permission to execute the main script:
```
sudo chmod u+x run.sh
```
2. Run the script:
```
./run.sh
```
###### Notice
> All databases will be stored in `/var/lib/docker/volumes/postgresqldata/_data` folder permanently. By default, you will not be able to get access to that folder: you have to add "read" credentials. 

# Connection

Parameter | Value 
--- | ---
host | 0.0.0.0
port | 5433
username | postgres
password | 1
database | postgres

Also, you can get manual access via terminal using the following CLI command:
```
docker exec -it docker-postgresql-1 /bin/bash -c "PGPASSWORD=1 psql --username=postgres"
```



