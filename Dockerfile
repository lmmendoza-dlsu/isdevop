FROM centos:7

RUN yum install -y https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    yum clean all

EXPOSE 3306

CMD ["sh", "-c", "mysqld_safe & sleep 10 && mysqladmin -u root password 'root' && mysql -e \"CREATE USER 'sa'@'%' IDENTIFIED BY 'sapassword';\" && mysql -e \"GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' WITH GRANT OPTION;\" && mysql -e \"FLUSH PRIVILEGES;\""]