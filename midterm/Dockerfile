FROM centos:7

ENV MYSQL_ROOT_PASSWORD=root12345

RUN yum update -y

RUN yum install -y wget && \
    wget https://dev.mysql.com/get/mysql80-community-release-el7-11.noarch.rpm && \
    rpm -ivh mysql80-community-release-el7-11.noarch.rpm

RUN yum install -y mysql-server && \
    yum clean all

RUN mysqld --initialize-insecure

CMD ["mysqld"]

EXPOSE 3306