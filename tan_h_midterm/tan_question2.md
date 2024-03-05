# Official image of Centos7
FROM centos:7

# Installation of MySQL server
RUN yum install -y mysql-server

# Start of MySQL service
CMD ["service", "mysqld", "start"]

# Set up user "sa" in MySQL
RUN mysql -uroot -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY '';" && \
    mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost';"

# MySQL port expose
EXPOSE 3306