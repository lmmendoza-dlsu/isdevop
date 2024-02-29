FROM centos:7

RUN yum install -y mysql-server

CMD ["mysqld"]

RUN mysqladmin -u root password 'root_password'

RUN mysql -u root -p'root_password' -e "CREATE USER 'sa'@'%' IDENTIFIED BY 'SA_password';"
RUN mysql -u root -p'root_password' -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' WITH GRANT OPTION;"
RUN mysql -u root -p'root_password' -e "FLUSH PRIVILEGES;"

EXPOSE 3306