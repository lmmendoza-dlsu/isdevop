
# Use the CentOS 7 image from Docker Hub
FROM centos:7

# Install the wget package
RUN yum install -y wget

RUN yum clean all

# Update the system
RUN yum -y update

# Install the EPEL repository
RUN yum -y install epel-release

RUN wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
RUN rpm -Uvh mysql80-community-release-el7-3.noarch.rpm

# Import the GPG key from the keyserver
RUN rpm --import https://www.centos.org/keys/RPM-GPG-KEY-CentOS-7

# Import the GPG key for the MySQL repository
RUN rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023

# Install the MySQL server 
RUN yum -y install mysql-server

ENV MYSQL_ROOT_PASSWORD=12345

#Create user 
RUN useradd sa
RUN echo "sa:12345" | chpasswd

# Change ownership of the MySQL data directory to the sa user
RUN chown sa:sa /var/log/mysqld.log
RUN chmod -R 777 /var/log/mysqld.log

# Expose the default MySQL port
EXPOSE 3306



# Start MySQL service when the container starts
CMD ["mysqld", "--user=sa"]

