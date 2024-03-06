# Use the official CentOS 7 image as the base image
FROM centos:7

# Install MySQL server
RUN yum install -y mysql-server

# Create a directory for MySQL initialization scripts
RUN mkdir -p /docker-entrypoint-initdb.d

# Create a basic MySQL initialization script to set up 'sa' user
# The script should be named in a way that it runs after the MySQL server starts
# In this case, we name it '00-init.sql'
RUN echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'your_root_password';" > /docker-entrypoint-initdb.d/00-init.sql
RUN echo "CREATE USER 'sa'@'%' IDENTIFIED BY 'your_sa_password';" >> /docker-entrypoint-initdb.d/00-init.sql
RUN echo "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' WITH GRANT OPTION;" >> /docker-entrypoint-initdb.d/00-init.sql
RUN echo "FLUSH PRIVILEGES;" >> /docker-entrypoint-initdb.d/00-init.sql

# Expose the default MySQL port
EXPOSE 3306

# Start MySQL server on container startup
CMD ["mysqld"]
