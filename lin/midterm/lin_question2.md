FROM centos:7

RUN yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-11.noarch.rpm
RUN yum -y install mysql-community-server

RUN mysqld --initialize-insecure

CMD ["bash", "-c", "\
    mysqld --user=root --daemonize \
    && mysql -u root -e \"CREATE USER 'root'@'gateway' IDENTIFIED BY 'root123';\" \
    && mysql -u root -e \"ALTER USER 'root'@'gateway' IDENTIFIED BY 'root123';\" \
    && tail -f /dev/null \
"]

EXPOSE 3309