# CentOS 7 Base Image
FROM centos:7

# Install MySQL
RUN yun install -y mysql-server

# Start MySQL
RUN systemctl start mysqld

# Set root password
RUN mysql -e "UPDATE mysql.user SET Password=PASSWORD('password') WHERE User='root'; FLUSH PRIVILEGES;"

# Create user *sa* with password *password*
RUN mysql -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost' WITH GRANT OPTION; FLUSH PRIVILEGES;"

# Expose port 3306
EXPOSE 3306

# Start MySQL on container start
CMD ["mysqld_safe"]