FROM centos:7

# Install MySQL server
RUN yum install -y wget
RUN wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
RUN rpm -ivh mysql80-community-release-el7-3.noarch.rpm
RUN yum install -y --nogpgcheck mysql-server
RUN rm -f mysql80-community-release-el7-3.noarch.rpm


# Create a new folder for mysql, give permission and initialize the database
RUN mkdir -p /var/lib/mysql \
    && chown -R mysql:mysql /var/lib/mysql \
    && chmod 755 /var/lib/mysql \
    && mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql

# start mysql and set a root password
# password is mysqlrootpass
CMD ["bash", "-c", "mysqld --user=root --datadir=/var/lib/mysql --daemonize && sleep 5 && mysqladmin -u root password 'mysqlrootpass' && tail -f /dev/null"]

EXPOSE 3306

