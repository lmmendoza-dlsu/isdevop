FROM centos:7

RUN yum install -y mysql-server

RUN service mysqld start

RUN mysqladmin -u root password 'your_root_password'

RUN mysql -u root -p'your_root_password' -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY 'sa_password';"

RUN mysql -u root -p'your_root_password' -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost' WITH GRANT OPTION;"

EXPOSE 3306

CMD ["mysqld"]
