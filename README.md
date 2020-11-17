# Requirements

You need to install the following package:
- [docker](https://docs.docker.com/engine/install/debian/#install-using-the-repository): ^19.x

# Deployment

Execute from the root folder:
```
./run.sh
```
###### Notice!
> All databases will be stored in `/var/lib/docker/volumes/postgresqldata/_data` folder permanently. By default, you will not be able to get access to that folder: you have to add "read" credentials. 

# Access

Now you can connect to PostgreSQL service inside of container using the following command:
```
PGPASSWORD=1 psql --host=0.0.0.0 --port=5433 --username=postgres
```

