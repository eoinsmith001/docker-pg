#!/bin/bash
tag=pgdata
docker build -t $tag .
echo "Built $tag"
