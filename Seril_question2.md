FROM centos:7

RUN yum -y install mysql-server && \
 yum clean all

RUN mysql_install_db

RUN mysqladmin -u root password 'password123'

CMD ["mysqld_safe"]

EXPOSE 3306
