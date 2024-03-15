FROM centos:7

RUN yum install -y wget && \
    wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    rpm -ivh mysql80-community-release-el7-3.noarch.rpm && \
    rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023 && \
    yum install -y mysql-community-server && \
    yum clean all

ENV MYSQL_DATADIR=/var/lib/mysql \
    MYSQL_USER=mysql \
    MYSQL_BASEDIR=/usr \
    MYSQL_LC_MESSAGES=en_US

RUN /usr/sbin/mysqld --initialize-insecure --user=$MYSQL_USER --basedir=$MYSQL_BASEDIR --datadir=$MYSQL_DATADIR --lc-messages=$MYSQL_LC_MESSAGES

EXPOSE 3306

VOLUME /var/lib/mysql

ENTRYPOINT ["/usr/sbin/mysqld", "--datadir=/var/lib/mysql", "--user=mysql", "--port=3306"]