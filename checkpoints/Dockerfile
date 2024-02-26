FROM mysql:8.0

ENV MySQL_ROOT_PASSWORD=rootpassword

#Inst 1
ENV MYSQL_USER=john
ENV MYSQL_PASSWORD=12345678
RUN mkdir /var/lib/mysql-instance1
RUN chown -R mysql:mysql /var/lib/mysql-instance1
RUN mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql-instance1

#Inst 2
ENV MYSQL_USER=marcus
ENV MYSQL_PASSWORD=password
RUN mkdir /var/lib/mysql-instance2
RUN chown -R mysql:mysql /var/lib/mysql-instance2
RUN mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql-instance2

#Inst 3
ENV MYSQL_USER=dennis
ENV MYSQL_PASSWORD=p@ssw0rd123
RUN mkdir /var/lib/mysql-instance3
RUN chown -R mysql:mysql /var/lib/mysql-instance3
RUN mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql-instance3

#Inst 4 (Default)
RUN mkdir /var/lib/mysql-instance4
RUN chown -R mysql:mysql /var/lib/mysql-instance4
RUN mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql-instance4

#Inst 5 (Default)
RUN mkdir /var/lib/mysql-instance5
RUN chown -R mysql:mysql /var/lib/mysql-instance5
RUN mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql-instance5


EXPOSE 3306

CMD ["mysqld_safe"]