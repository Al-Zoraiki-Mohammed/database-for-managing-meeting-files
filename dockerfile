# Use the official PostgreSQL image as the base
FROM postgres:16-alpine

# Set this environment variable to ensure UTF-8 encoding is used
ENV LANG en_US.utf8

# Copy initialization scripts into the special Docker entry point directory.
# PostgreSQL will automatically execute all scripts in this folder alphabetically
# on the first run of the container. We use numerical prefixes to ensure order:
# 1. Create the database tables (DDL).
# 2. Populate the tables with initial data (DML).
COPY create_db.sql /docker-entrypoint-initdb.d/1-create_schema.sql
COPY populate_data.sql /docker-entrypoint-initdb.d/2-populate_data.sql

# The default exposed port is 5432, but it's good practice to explicitly state it.
EXPOSE 5432
