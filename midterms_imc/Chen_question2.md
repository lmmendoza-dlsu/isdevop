# CentOS 7 from Docker
FROM centos:7

# Install MySQL server 
RUN yum -y update && \
    yum -y install mysql-server && \
    yum clean all

# Start MySQL service
RUN service mysqld start

# Create MySQL user 'sa' with password 'p@ss123'
RUN mysql -u root -e "CREATE USER 'sa'@'%' IDENTIFIED BY 'p@ss123'; \
                      GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' WITH GRANT OPTION; \
                      FLUSH PRIVILEGES;"

# Expose MySQL port
EXPOSE 3306

# Start MySQL service on container start
CMD ["mysqld_safe"]


