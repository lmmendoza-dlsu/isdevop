# CentOS 7 from Docker
FROM centos:7

# Import MySQL GPG key
RUN rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023

# Install MySQL server 
RUN yum -y update && \
    yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    yum -y install mysql-server 

# Initialize MySQL database configuration
RUN echo '[mysqld]' > /etc/my.cnf
RUN echo 'datadir = /var/lib/mysql' >> /etc/my.cnf

# Create necessary directories and set permissions
RUN mkdir -p /var/run/mysql
RUN chown -R mysql:mysql /var/run/mysql
RUN chmod -R 750 /var/run/mysql

# Copy MySQL startup script
COPY mysql.sh /usr/local/bin/mysql.sh
RUN chmod +x /usr/local/bin/mysql.sh

# Initialize MySQL database
RUN /usr/sbin/mysqld --initialize-insecure --user=mysql --basedir=/usr --datadir=/var/lib/mysql --lc-messages=en_US

# Start MySQL server with specified configuration
CMD ["sh", "-c", "/usr/local/bin/mysql.sh" ,"/usr/sbin/mysqld --datadir=/var/lib/mysql --user=mysql --port=8080"]

# Expose MySQL port
EXPOSE 8080

---
# MySQL startup script (filename: mysql.sh)
#!/bin/bash

mysqld --user=root --daemonize

sleep 10

mysql -u root -e "CREATE USER 'sa'@'%' IDENTIFIED BY 'p@ss123';"

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' IDENTIFIED BY 'p@ss123';"

mysql -u root -e "FLUSH PRIVILEGES;"

tail -f /dev/null


