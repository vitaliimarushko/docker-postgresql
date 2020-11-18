# Requirements

Install the following dependencies:
 - [PostgreSQL](https://www.postgresql.org/download/linux): ^13.x
 - [Docker](https://docs.docker.com/engine/install/debian/#install-using-the-repository): ^19.x

# Deployment

1\. Add required permission to execute the main script:
```
sudo chmod u+x run.sh
```
2\. Run the script:
```
./run.sh
```
###### Notice
> All databases will be stored in `/var/lib/docker/volumes/postgresqldata/_data` folder permanently. By default, you will not be able to get access to that folder: you have to add "read" credentials. 

# Access

Connection parameters are:

Parameter | Value 
--- | ---
host | 0.0.0.0
port | 5433
username | postgres
password | 1
database | postgres

So, now you can connect to PostgreSQL service inside of container using the following command from the command line:
```
PGPASSWORD=1 psql --host=0.0.0.0 --port=5433 --username=postgres
```



