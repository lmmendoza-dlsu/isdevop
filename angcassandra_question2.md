# CentOS 7 from Docker
FROM centos:7

# Install MySQL server
RUN yum -y update && \
    yum -y install mysql-server && \
    yum clean all

# Initialize MySQL database
RUN service mysqld start && \
    mysql -uroot -e "CREATE USER 'sa'@'%' IDENTIFIED BY 'p@ss123'" && \
    mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' WITH GRANT OPTION" && \
    mysql -uroot -e "FLUSH PRIVILEGES"

# Expose port 3306 (MySQL default port)
EXPOSE 3306

# Start MySQL server on CentOS
CMD ["mysqld", "--user=mysql", "--console"]
