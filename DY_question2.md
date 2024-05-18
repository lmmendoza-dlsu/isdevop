FROM centos:7

# Install wget which is needed to download MySQL repo file
RUN yum install -y wget

# Download MySQL Community Repository
RUN wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm

# Install MySQL Community Repository
RUN yum localinstall -y mysql80-community-release-el7-3.noarch.rpm

# Import MySQL Key
RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql

# Install MySQL Server
RUN yum install -y mysql-community-server

# Expose MYSQL Port
EXPOSE 3306

# Start MySQL Service
CMD ["mysqld"]