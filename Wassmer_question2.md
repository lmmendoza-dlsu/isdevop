FROM centos:7

RUN yum install -y wget

RUN yum clean all

RUN yum -y update

RUN yum -y install epel-release

RUN wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm

RUN rpm -Uvh mysql80-community-release-el7-3.noarch.rpm

RUN rpm --import https://www.centos.org/keys/RPM-GPG-KEY-CentOS-7

RUN rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023

RUN yum -y install mysql-server

ENV MYSQL_ROOT_PASSWORD=password

RUN useradd sa

RUN echo "sa:password" | chpasswd

RUN chown sa:sa /var/log/mysqld.log

RUN chmod -R 777 /var/log/mysqld.log

EXPOSE 3306

CMD ["mysqld", "--user=sa"]