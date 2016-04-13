#!/bin/bash
docker run \
  -it \
  --rm \
  postgres:9.4 \
  psql postgresql://postgres@192.168.99.100:5432/postgres
