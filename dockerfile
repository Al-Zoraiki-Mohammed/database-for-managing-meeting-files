# Use the official MySQL image as the base image
FROM mysql:8.0

COPY *.sql /docker-entrypoint-initdb.d/

# Set environment variables (for root password, database, and user)
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=paperless_university
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword



# Expose the default MySQL port
EXPOSE 3306

# Default command to run MySQL server
CMD ["mysqld"]