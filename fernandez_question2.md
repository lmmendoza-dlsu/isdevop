FROM centos:7

RUN yum update && yum install -y mysql-server

RUN echo "CREATE DATABASE mydb;" | mysql -u root -p

# Set the root password (change this to a strong password)
RUN echo "SET PASSWORD FOR root@localhost = 'password';" | mysql -u root -p
