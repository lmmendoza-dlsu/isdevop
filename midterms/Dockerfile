# Dockerfile for CentOS 7 with Basic MySQL Installation

FROM centos:7

# Install wget which is needed to download MySQL repo file
RUN yum install -y wget

# Add MySQL Yum repository
RUN wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
RUN rpm -ivh mysql80-community-release-el7-3.noarch.rpm

# Import MySQL GPG key
RUN rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023

# Install MySQL server
RUN yum install -y mysql-community-server && \
    yum clean all

# Initialize MySQL
RUN /usr/sbin/mysqld --initialize-insecure --user=mysql --basedir=/usr --datadir=/var/lib/mysql --lc-messages=en_US

# Start MySQL service
CMD ["/usr/sbin/mysqld", "--datadir=/var/lib/mysql", "--user=mysql", "--port=3306"]

EXPOSE 3306