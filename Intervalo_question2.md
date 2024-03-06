*******************************
*
*   Question 2
*   Create a dockerfile that creates a CentOS 7 virtual machine and installs a BASIC MySQL database. 
*   Basic means no additional configuration file, and I will only be needing the sa user.
*   Hint: There is an available image for Centos 7 in dockerhub. You can start your dockerfile with FROM centos:7.
*   Hint 2: Next thing to do is to install the MySQL server. If Ubuntu has apt-get, CentOS has "yum install"...
*
*******************************

FROM centos:7

RUN yun install -y mysql-server
RUN systemctl start mysqld

CMD ["mysqld"]

RUN mysql -u root -p 'rootpw' -e
RUN "GRANT ALL PRIVILEGES ON . TO 'root'@'%' WITH GRANT OPTION;"
RUN mysql -u root -p 'rootpw' -e "FLUSH PRIVILEGES"


EXPOSE 3306