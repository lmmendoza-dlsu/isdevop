FROM centos:7

# Set environment variables (root password)
ENV MYSQL_ROOT_PASSWORD=rootpass123
ENV MYSQL_USER=sa
ENV MYSQL_PASSWORD=sapass123

# Update system
RUN yum update -y

# Install MySQL 8.0 community release
RUN yum install -y wget && \
    wget https://dev.mysql.com/get/mysql80-community-release-el7-11.noarch.rpm && \
    rpm -ivh mysql80-community-release-el7-11.noarch.rpm

# Install MySQL server
RUN yum install -y mysql-server && \
    yum clean all

# Initialize MySQL data directory
RUN mysqld --initialize-insecure --user=mysql

# Start MySQL server
CMD ["mysqld"]

# Expose MySQL port
EXPOSE 3306
