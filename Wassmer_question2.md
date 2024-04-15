FROM centos:7

RUN rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023

RUN yum -y update

RUN yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm

RUN yum -y install mysql-server

RUN echo '[mysqld]' > /etc/my.cnf

RUN echo 'datadir = /var/lib/mysql' >> /etc/my.cnf

ENV MYSQL_ROOT_PASSWORD=root

RUN mkdir -p /var/run/mysql

RUN chown -R mysql:mysql /var/run/mysql

RUN chown -R 750 /var/run/mysql

COPY mysql_sa.sh /usr/local/bin/mysql_sa.sh

RUN chmod +x /usr/local/bin/mysql_sa.sh

RUN /usr/sbin/mysqld --initialize-insecure --user=mysql --basedir=/usr --datadir=/var/lib/mysql --lc-messages=en_US

CMD ["sh", "-c", "/usr/local/bin/mysql_sa.sh" ,"/usr/sbin/mysqld --datadir=/var/lib/mysql --user=mysql --port=3306"]

EXPOSE 3306