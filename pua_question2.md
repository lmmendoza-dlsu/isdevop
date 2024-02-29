FROM centos:7

RUN yum install -y mysql-server

CMD ["mysqld"]
