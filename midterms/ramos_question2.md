# Use the CentOS 7 base image from Docker Hub
FROM centos:7

# Install MySQL Server and create sa user
RUN yum install -y mysql-server && \
    systemctl enable mysqld && \
    systemctl start mysqld && \
    mysqladmin -u root password 'thisistherootpassword' && \
    mysql -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY 'thisisthesapassword';" && \
    mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost' WITH GRANT OPTION;" && \
    mysql -e "FLUSH PRIVILEGES;"

# Expose MySQL default port
EXPOSE 3306

# Start MySQL service
CMD ["mysqld"]
