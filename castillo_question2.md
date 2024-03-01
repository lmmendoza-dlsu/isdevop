# Use the official CentOS 7 as base image
FROM centos:7

# Install MySQL and other required packages
RUN yum -y install mysql-server && \
    yum clean all

# Start MySQL service
RUN service mysqld start

# Create MySQL database
RUN mysqladmin -u root password 'yourpassword'

# Expose MySQL port
EXPOSE 3306

# Start MySQL service when container launches
CMD ["mysqld_safe"]
