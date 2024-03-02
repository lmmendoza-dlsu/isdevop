#  Create a dockerfile that creates a CentOS 7 virtual machine and installs a BASIC MySQL database. Basic means no additional configuration file, and I will only be needing the sa user.

## Hint 1: There is an available image for Centos 7 in dockerhub. You can start your dockerfile with FROM centos:7.

## Hint 2: Next thing to do is to install the MySQL server. If Ubuntu has apt-get, CentOS has "yum install"...

FROM centos:7

RUN yum -y install wget

RUN wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    rpm -ivh mysql80-community-release-el7-3.noarch.rpm && \
    yum -y install mysql-server

RUN service mysqld start

RUN mysqladmin -u root password 'pass123'

RUN mysql -u root -p'pass123' -e "CREATE DATABASE isdevopmidterm; GRANT ALL PRIVILEGES ON isdevopmidterm.* TO 'sa'@'%' IDENTIFIED BY 'pass123'; FLUSH PRIVILEGES;"

EXPOSE 3306

CMD ["mysqld"]

