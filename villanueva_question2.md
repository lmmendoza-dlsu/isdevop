FROM centos:7

# Install MySQL server and client
RUN yum install -y mysql-server mysql

# Start the MySQL service
RUN service mysqld start

EXPOSE 3306

