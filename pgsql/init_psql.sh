#!/bin/bash
set -e

PGPASSWORD=adminsweatworkspassword psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER sweatworksdba WITH PASSWORD 'sweatworkspassword';
    CREATE DATABASE sweatworksdb OWNER sweatworksdba;
    GRANT ALL PRIVILEGES ON DATABASE sweatworksdb TO sweatworksdba;
EOSQL

#PGPASSWORD=adminsweatworkspassword psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
#DO
#$do$
#BEGIN
#   IF NOT EXISTS (
#      SELECT                       -- SELECT list can stay empty for this
#      FROM   pg_catalog.pg_roles
#      WHERE  rolname = 'sweatworksdba') THEN
#      CREATE ROLE sweatworksdba LOGIN PASSWORD 'sweatworkspassword';
#    END IF;
#END
#$do$;
#
#
#SELECT 'CREATE DATABASE sweatworksdb OWNER sweatworksdba'
#WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'sweatworksdb')\gexec
#EOSQL
