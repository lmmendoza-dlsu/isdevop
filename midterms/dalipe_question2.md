FROM centos:7

RUN yum install -y mariadb-server

CMD ["mysqld"]


ENV MYSQL_USER=sa
ENV MYSQL_PASSWORD=your_password

EXPOSE 3306