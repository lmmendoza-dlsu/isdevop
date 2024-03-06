FROM centos:7

RUN rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023

RUN yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    yum -y install mysql-server

COPY exec.cnf /etc/exec.cnf

COPY user.sh /usr/local/bin/user.sh
RUN chmod +x /usr/local/bin/user.sh

RUN /usr/sbin/mysqld --initialize-insecure --user=mysql --basedir=/usr --datadir=/var/lib/mysql

CMD ["sh", "-c", "/usr/local/bin/user.sh && /usr/sbin/mysqld --datadir=/var/lib/mysql --user=mysql --port=3306"]

EXPOSE 3306

