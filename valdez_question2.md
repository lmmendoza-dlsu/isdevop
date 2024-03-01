FROM centos:7

RUN yum install -y mysql-server
CMD ["systemctl", "start", "mysqld"]

RUN yum install -y mysql
RUN echo "CREATE DATABASE mydatabase;" > /tmp/createdb.sql
RUN echo "CREATE USER 'sa'@'localhost' IDENTIFIED BY 'matthew_pass';" >> /tmp/createdb.sql
RUN echo "GRANT ALL PRIVILEGES ON mydatabase.* TO 'sa'@'localhost';" >> /tmp/createdb.sql
RUN echo "FLUSH PRIVILEGES;" >> /tmp/createdb.sql
RUN mysql < /tmp/createdb.sql

EXPOSE 3306

RUN yum clean all