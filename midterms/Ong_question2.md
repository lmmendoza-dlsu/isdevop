FROM centos:7

# Install MySQL
RUN yum install -y mysql-server

# Start MySQL service
CMD ["mysqld"]

# Expose MySQL port
EXPOSE 3306