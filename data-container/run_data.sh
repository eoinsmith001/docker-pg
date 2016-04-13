#!/bin/bash
name=pgdata
docker run --name $name pgdata
echo $name
