# CentOS 7 image from DockerHub
FROM centos:7

# SQL Server Installation
RUN yum -y update && \
    yum -y install mysql-server && \
    yum clean all

# Starting SQL Service
RUN systemctl enable mysqld && \
    systemctl start mysqld && \
    sleep 5

# Root Password Setting
RUN MYSQL_ROOT_PASSWORD='SeanDLSU2024' && \
    mysqladmin -u root password "$MYSQL_ROOT_PASSWORD"

# Expose MySQL port
EXPOSE 3306

# Starting MySQL service on container start
CMD ["mysqld"]