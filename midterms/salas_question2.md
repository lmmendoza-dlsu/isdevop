# Dockerfile for CentOS 7 with Basic MySQL Database

Create a Dockerfile to set up a CentOS 7 virtual machine with a basic MySQL database, utilizing the official CentOS 7 image available on Docker Hub.

## Dockerfile

```Dockerfile
# Use the official CentOS 7 image from Docker Hub
FROM centos:7

# Install MySQL server
RUN yum install -y mysql-server

# Start MySQL service and set it to run on system boot
RUN systemctl enable mysqld.service

# Create MySQL data directory
RUN mkdir -p /var/lib/mysql

# Change MySQL data directory ownership to mysql user and group
RUN chown -R mysql:mysql /var/lib/mysql

# Initialize MySQL database
RUN mysql_install_db --user=mysql --ldata=/var/lib/mysql

# Start MySQL service
CMD ["mysqld"]

# Expose MySQL port
EXPOSE 3306

