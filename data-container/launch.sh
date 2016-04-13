!#/bin/bash

docker run \
  -it \
  --name pg \
  --volumes-from pgdata \
  -p 5432:5432 \
  postgres:9.4
