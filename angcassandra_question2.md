# Create a dockerfile that creates a CentOS 7 virtual machine and installs a BASIC MySQL database. Basic means no additional configuration file, and I will only be needing the sa user.

# CentOS 7 from Docker
FROM centos:7

# Install MySQL server
RUN yum -y update && \
    yum -y install mysql-server && \
    yum clean all

# Initialize MySQL database for sa user
RUN service mysqld start && \
    mysql -uroot -e "CREATE USER 'sa'@'%' IDENTIFIED BY 'p@ss123'" && \
    mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' WITH GRANT OPTION" && \
    mysql -uroot -e "FLUSH PRIVILEGES"

# Expose port 3306 (MySQL default port)
EXPOSE 3306

# Start MySQL server
CMD ["mysqld", "--user=mysql", "--console"]
