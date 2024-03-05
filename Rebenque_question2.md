FROM centos:7

# Install MySQL server
RUN yum -y install mysql-server

# Start MySQL service
CMD ["service", "mysqld", "start"]
