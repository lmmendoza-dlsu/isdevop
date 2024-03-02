Create a dockerfile that creates a CentOS 7 virtual machine and installs a BASIC MySQL database. Basic means no additional configuration file, and I will only be needing the sa user.

    Hint: There is an available image for Centos 7 in dockerhub. You can start your dockerfile with FROM centos:7.
    Hint 2: Next thing to do is to install the MySQL server. If Ubuntu has apt-get, CentOS has "yum install"...

# Virtual Machine
FROM centos:7

# MySQL Installation
RUN yum install -y mysql-server yum clean all

# SA Password
RUN MySQL_ROOT_PASSWORD=pa55w0rd

# MySQL Default Port
EXPOSE 3306

# Start MySQL
CMD ["mysqld_safe"]