psql -U ${USER} -h ${HOST} -c "DROP DATABASE IF EXISTS $DB"
 
psql -U ${USER} -h ${HOST} -c "CREATE DATABASE $DB WITH OWNER = postgres ENCODING = 'UTF8' TABLESPACE = pg_default CONNECTION LIMIT = -1"
 
psql -U ${USER} -h ${HOST} -d ${DB} -c "CREATE SCHEMA ss AUTHORIZATION $USER"
psql -U ${USER} -h ${HOST} -d ${DB} -c "CREATE SCHEMA ss_stg AUTHORIZATION $USER"
psql -U ${USER} -h ${HOST} -d ${DB} -c "CREATE SCHEMA ss_ext AUTHORIZATION $USER"