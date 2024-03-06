# Dockerfile for CentOS 7 with Basic MySQL Installation

FROM centos:7

# Install required tools
RUN yum install -y wget gnupg

# Import MySQL GPG key
RUN rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023

# Add MySQL Yum repository and install MySQL server
RUN wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    rpm -ivh mysql80-community-release-el7-3.noarch.rpm && \
    yum install -y mysql-community-server && \
    yum clean all && \
    rm -f mysql80-community-release-el7-3.noarch.rpm

# Initialize MySQL
RUN /usr/sbin/mysqld --initialize-insecure --user=mysql --basedir=/usr --datadir=/var/lib/mysql --lc-messages=en_US

# Start MySQL service
CMD ["/usr/sbin/mysqld", "--datadir=/var/lib/mysql", "--user=mysql", "--port=3306"]

# Expose MySQL port
EXPOSE 3306
