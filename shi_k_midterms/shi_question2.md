# Use CentOS 7 as the base image
FROM centos:7

# Install MySQL server
RUN yum install -y mysql-server

# Start MySQL service
RUN service mysqld start

# Set up MySQL 'sa' user
RUN mysql -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY 'mypassword123';"
RUN mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost';"

# MySQL port
EXPOSE 3306

# Start MySQL service on container startup
CMD ["mysqld_safe"]