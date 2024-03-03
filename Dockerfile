# Use the official CentOS 7 image
FROM centos:7

# Install MySQL Server
RUN yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-11.noarch.rpm && \
    yum -y install mysql-community-server
    
RUN mysqld --initialize-insecure

# Start MySQL service, create user, and grant privileges
# The username and password is root, root
CMD ["bash", "-c", "\
    mysqld --user=root\
    && sleep 5 \
    && mysql -u root -e \"DROP USER IF EXISTS 'root'@'gateway';\" \
    && mysql -u root -e \"CREATE USER 'root'@'gateway' IDENTIFIED BY 'p@ss!';\" \
    && mysql -u root -e \"GRANT ALL PRIVILEGES ON *.* TO 'root'@'gateway';\" \
    && tail -f /dev/null \
"]

# Expose MySQL port
EXPOSE 3306