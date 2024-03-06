FROM centos:7

RUN yum install -y wget && \
    wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    rpm -ivh mysql80-community-release-el7-3.noarch.rpm && \
    rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023 && \
    yum install -y mysql-community-server && \
    yum clean all

RUN /usr/sbin/mysqld --initialize-insecure --user=mysql --basedir=/usr --datadir=/var/lib/mysql --lc-messages=en_US


CMD ["/usr/sbin/mysqld", "--datadir=/var/lib/mysql", "--user=mysql", "--port=3306"]


EXPOSE 3306
