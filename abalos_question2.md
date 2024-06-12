# CentOS image
FROM centos:7

# Install MySQL server
RUN yum -y update && yum -y install mysql-server && yum clean all

# Initialize MySQL database
RUN service mysqld start && mysqladmin -u root password 'root'

# Expose MySQL port
EXPOSE 3306

# Start MySQL service on container start
CMD ["mysqld"]
