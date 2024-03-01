# Use the official CentOS 7 as a parent image
FROM centos:7

# Install MySQL and other necessary packages
RUN yum -y install mysql-server mysql && \
    yum clean all && \
    rm -rf /var/cache/yum

# Expose the MySQL port
EXPOSE 3306

# Start MySQL service on container startup
CMD ["/usr/bin/mysqld_safe"]