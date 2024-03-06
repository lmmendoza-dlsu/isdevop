FROM centos:7

RUN yum update -y && \
    yum install -y mysql-server && \
    yum clean all

RUN systemctl enable mysqld.service

RUN systemctl start mysqld && \
    mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'your_password';" && \
    mysql -e "CREATE DATABASE your_database;" && \
    mysql -e "GRANT ALL PRIVILEGES ON your_database.* TO 'your_user'@'localhost' IDENTIFIED BY 'your_password';" && \
    mysql -e "FLUSH PRIVILEGES;" && \
    systemctl stop mysqld

EXPOSE 3306

CMD ["mysqld_safe"]