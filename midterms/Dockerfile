# Use the CentOS 7 base image
FROM centos:7

# Install wget and download MySQL repository configuration
RUN yum install -y wget && \
    wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    rpm -ivh mysql80-community-release-el7-3.noarch.rpm && \
    rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023 && \
    yum install -y mysql-community-server && \
    yum clean all

# Initialize MySQL server with insecure settings
RUN /usr/sbin/mysqld --initialize-insecure --user=mysql --basedir=/usr --datadir=/var/lib/mysql --lc-messages=en_US

# Set the default command to start MySQL server
CMD ["/usr/sbin/mysqld", "--datadir=/var/lib/mysql", "--user=mysql", "--port=3306"]

# Expose the MySQL port
EXPOSE 3306