# Use CentOS 7 as the base image
FROM centos:7

# Install MySQL server
RUN yum -y update && \
    yum -y install mysql-server && \
    yum clean all

# Start MySQL service
CMD ["mysqld_safe"]

# Expose MySQL port
EXPOSE 3306
