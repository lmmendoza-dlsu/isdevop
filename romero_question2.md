FROM centos:7

RUN yum install -y mysql-server

RUN systemctl start mysqld && systemctl enable mysqld

RUN systemctl start mysqld && systemctl enable mysqld

RUN mysqladmin -u root password password

RUN mysql -u root -ppassword -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY 'sa_password';"

RUN mysql -u root -ppassword -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost' WITH GRANT OPTION;"

EXPOSE 3306


