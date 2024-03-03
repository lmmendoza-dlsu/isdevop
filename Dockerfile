# CentOS 7 Base Image
FROM centos:7

RUN yum install -y wget

RUN wget https://repo.mysql.com/RPM-GPG-KEY-mysql && \
    rpm --import RPM-GPG-KEY-mysql && \
    rm RPM-GPG-KEY-mysql

RUN yum clean all && yum makecache

# Install MySQL
RUN yum -y update && \
    yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    yum -y install mysql-community-server

# Start MySQL
RUN systemctl start mysqld

# Set root password
RUN mysql -e "UPDATE mysql.user SET Password=PASSWORD('password') WHERE User='root'; FLUSH PRIVILEGES;"

# Create user *sa* with password *password*
RUN mysql -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost' WITH GRANT OPTION; FLUSH PRIVILEGES;"

# Expose port 3306
EXPOSE 3306

# Start MySQL on container start
CMD ["mysqld_safe"]