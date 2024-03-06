# CentOS 7 from Docker
FROM centos:7

# Install MySQL server 
RUN yum -y update && \
    yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    yum -y install mysql-server 

# Initialize MySQL database
RUN /usr/bin/mysql_install_db --user=mysql --ldata=/var/lib/mysql

# Start MySQL service
RUN systemctl enable mysqld.service
RUN systemctl start mysqld.service

# Set MySQL root password
RUN MYSQL_ROOT_PASSWORD=$(grep 'temporary password' /var/log/mysqld.log | awk '{print $NF}') && \
    mysqladmin -u root --password="${MYSQL_ROOT_PASSWORD}" password 'new_root_password'

# Create sa user
RUN mysql -u root -p'new_root_password' -e "CREATE USER 'sa'@'%' IDENTIFIED BY 'p@ss123';"
RUN mysql -u root -p'new_root_password' -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' IDENTIFIED BY 'p@ss123';"
RUN mysql -u root -p'new_root_password' -e "FLUSH PRIVILEGES;"

# Expose MySQL port
EXPOSE 3306

# Start MySQL service when the container launches
CMD ["mysqld_safe"]



