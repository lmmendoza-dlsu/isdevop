    # Use the official CentOS 7 image from Docker Hub
FROM centos:7

# Install MySQL Server
RUN yum install -y mysql-server

# Start the MySQL service and configure it
RUN service mysqld start && \
    mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';" && \
    mysql -e "CREATE USER 'sa'@'%' IDENTIFIED BY 'password';" && \
    mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' WITH GRANT OPTION;" && \
    mysql -e "FLUSH PRIVILEGES"

# Expose the MySQL port
EXPOSE 3306

# Command to run when the container starts
CMD ["mysqld", "--user=mysql"]
