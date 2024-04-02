**********************************************************************
*
*     ISDEVOP
*     ISDEVOP Miderm Question 2
* 
*     Author: Evora
*     Date: March 2, 2024
* 
**********************************************************************
FROM centos:7

RUN yum install -y mysql-server

CMD ["mysqld"]

RUN mysqladmin -u root password 'rootpassword' && \
    mysql -e "CREATE USER 'sa'@'%' IDENTIFIED BY 'sapassword';" && \
    mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' WITH GRANT OPTION;" && \
    mysql -e "FLUSH PRIVILEGES;"

EXPOSE 3306
