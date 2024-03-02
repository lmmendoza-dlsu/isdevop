FROM centos:7

RUN yum -y update && \
    yum -y install mysql-server && \
    yum clean all

RUN mysql_install_db

RUN mysqladmin -u root password 'sqladmin'

CMD ["mysqld_safe"]

EXPOSE 3306
