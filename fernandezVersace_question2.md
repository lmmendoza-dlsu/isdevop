# Use the CentOS 7 base image from Docker Hub
FROM centos:7

# Install MySQL Server
RUN yum -y update && \
    yum -y install mysql-server && \
    yum clean all

# Start MySQL service
RUN systemctl enable mysqld && \
    systemctl start mysqld && \
    sleep 5

# Set 'sa' user password to blank (no password)
RUN mysqladmin -u root password ''

# Expose MySQL port
EXPOSE 3306

# Start MySQL service on container startup
CMD ["mysqld"]
