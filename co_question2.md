
FROM centos:7

RUN yum install -y mysql-server && \
    yum clean all

EXPOSE 3306

CMD ["mysqld_safe"]