/**
2. 
FROM centos:7

RUN yum install -y mysql-server

RUN service mysqld start

EXPOSE 3306

CMD ["mysqld_safe"]
**/