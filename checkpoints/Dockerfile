# Official MySQL image as the base image
FROM mysql:8.0

# Environmental variable for MySQL root password
ENV MySQL_ROOT_PASSWORD=rootpassword

# Create and configure additional MySQL instances

# Number 1
ENV MYSQL_USER=user1
ENV MYSQL_PASSWORD=password1
RUN mkdir /var/lib/mysql-instance1
RUN chown -R mysql:mysql /var/lib/mysql-instance1
RUN mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql-instance1

# Number 2
ENV MYSQL_USER=user2
ENV MYSQL_PASSWORD=password2
RUN mkdir /var/lib/mysql-instance2
RUN chown -R mysql:mysql /var/lib/mysql-instance2
RUN mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql-instance2

# Number 3
ENV MYSQL_USER=user3
ENV MYSQL_PASSWORD=password3
RUN mkdir /var/lib/mysql-instance3
RUN chown -R mysql:mysql /var/lib/mysql-instance3
RUN mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql-instance3

# Number 4
RUN mkdir /var/lib/mysql-instance4
RUN chown -R mysql:mysql /var/lib/mysql-instance4
RUN mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql-instance4

# Number 5
RUN mkdir /var/lib/mysql-instance5
RUN chown -R mysql:mysql /var/lib/mysql-instance5
RUN mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql-instance5

# Expose MySQL port
EXPOSE 3306

# Start MySQL service
CMD ["mysqld_safe"]
