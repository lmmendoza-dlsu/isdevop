**********************************************************************
*
*     ISDEVOP S12
*     ISDEVOP Midterm Exam - Question 2
*
*     Author: Thea Verah Sumagang
*     Date: March 6, 2024
*
**********************************************************************

FROM centos:7

RUN yum install -y mysql-server

RUN systemctl start mysqld

RUN mysqladmin -u root password 'password'

RUN mysql -u root -ppassword -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost' IDENTIFIED BY 'password'; FLUSH PRIVILEGES;"

EXPOSE 3306

CMD ["mysqld_safe"]