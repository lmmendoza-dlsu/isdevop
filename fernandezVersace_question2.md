# Docker image based on CentOS 7
FROM centos:7

# Add the MySQL GPG key
RUN rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023

# Install MySQL server
RUN yum -y update && \
    yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    yum -y install mysql-server 
    
# Set up initial MySQL database configuration
RUN echo '[mysqld]' > /etc/my.cnf
RUN echo 'datadir = /var/lib/mysql' >> /etc/my.cnf

# Create required directories and adjust permissions
RUN mkdir -p /var/run/mysql
RUN chown -R mysql:mysql /var/run/mysql
RUN chmod -R 750 /var/run/mysql

# Transfer the MySQL startup script
COPY mysql.sh /usr/local/bin/mysql.sh
RUN chmod +x /usr/local/bin/mysql.sh

# Begin the MySQL server with custom settings
CMD ["sh", "-c", "/usr/local/bin/mysql.sh"]

# Open the MySQL port for external access
EXPOSE 3306

---
---
# MySQL startup script (named: mysql.sh)
#!/bin/bash

# Wait for MySQL to start
sleep 10

# Create 'sa' user
mysql -u root -e "CREATE USER 'sa'@'%' IDENTIFIED BY 'p@ss123';"

# Grant privileges to 'sa' user
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' IDENTIFIED BY 'p@ss123';"

# Flush privileges
mysql -u root -e "FLUSH PRIVILEGES;"

# Keep the container running
tail -f /dev/null
