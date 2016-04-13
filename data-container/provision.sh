#!/bin/bash
echo hello
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
  CREATE USER testuser;
  CREATE DATABASE testdb;
  GRANT ALL PRIVILEGES ON DATABASE testdb TO testuser;
EOSQL
echo "user and db created, quitting"
# PIDFILE=/var/lib/postgresql/data/postmaster.pid
# kill -INT `head -1 $PIDFILE`
su -c "pg_ctl stop" postgres
