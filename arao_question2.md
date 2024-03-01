FROM centos:7

RUN yum install -y mysql-server

RUN systemctl start mysqld

CMD ["mysqld"]

RUN mysql -u root -p'root_password' -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root_password' WITH GRANT OPTION;"
    && mysql -u root -p'root_password' -e "FLUSH PRIVILEGES;"

EXPOSE 3306
