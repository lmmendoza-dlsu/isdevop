# The official CentOS 7 image
FROM centos:7

# Install MySQL server
RUN yum -y update &&
    yum -y install mysql-server && 
    yum clean all

# Initialize MySQL database
RUN mysql_install_db 

# Start MySQL service
CMD ["mysqld_safe"]

# Expose MySQL port
EXPOSE 3306