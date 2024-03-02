FROM centos:7

RUN yum install -y mysql-server yum clean all

RUN MySQL_ROOT_PASSWORD=pa55w0rd

EXPOSE 3306

CMD ["mysqld_safe"]