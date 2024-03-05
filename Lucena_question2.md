**********************************************************************
*
CentOS 7 virtual machine and installs a BASIC MySQL database. Basic means no additional configuration file, and I will only be needing the sa user.
Hint: There is an available image for Centos 7 in dockerhub. You can start your dockerfile with FROM centos:7.
Hint 2: Next thing to do is to install the MySQL server. If Ubuntu has apt-get, CentOS has "yum install"...
*
Lucena, Renz Erik R. S16
**********************************************************************

# Use the CentOS 7 base image from Docker Hub
FROM centos:7

# Install MySQL Server repository
RUN yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-5.noarch.rpm

# Install MySQL Server
RUN yum -y install mysql-community-server

# Start MySQL Service
RUN service mysqld start

# Set root password for MySQL
RUN mysqladmin -u root password 'rootPass1234!'

# Create a user 'sa' with all privileges and password 'userPass1234!'
RUN mysql -u root -rootPass1234' -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY 'userPass1234';"
RUN mysql -u root -rootPass1234' -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost' WITH GRANT OPTION;"

# Expose MySQL default port
EXPOSE 3306

# Start MySQL Service when the container starts
CMD ["mysqld_safe"]

