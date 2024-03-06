# Use CentOS 7 as the base image
FROM centos:7

# Install MySQL server
RUN yum -y update && \
    yum -y install mysql-server && \
    yum clean all

# Start MySQL service
RUN systemctl enable mysqld

# Initialize MySQL database and create 'sa' user
RUN systemctl start mysqld && \
    MYSQL_ROOT_PASSWORD=$(grep 'temporary password' /var/log/mysqld.log | awk '{print $NF}') && \
    mysqladmin -uroot -p"${MYSQL_ROOT_PASSWORD}" password 'root' && \
    mysql -uroot -proot -e "CREATE USER 'sa'@'%' IDENTIFIED BY 'p@ss123';" && \
    mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' IDENTIFIED BY 'p@ss123';" && \
    mysql -uroot -proot -e "FLUSH PRIVILEGES;"

# Expose MySQL port
EXPOSE 3306

# Command to run MySQL
CMD ["mysqld_safe"]

