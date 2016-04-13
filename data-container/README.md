# Postgres and Docker

Using official 9.4 image from Docker Hub.

## Build a data image and provision a new database and user

- `./build.sh` builds the data container image
- `./run_data.sh` instantiates and provisions the data container (See "How to extend this image" (here)[https://hub.docker.com/_/postgres/])
- `launch.sh` launches a named, running postgres container with volumes from the previous step's container

## Verify 

Connect using `psql` via docker: 

- `client.sh`


