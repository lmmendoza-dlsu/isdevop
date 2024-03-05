<!-- Create a dockerfile that creates a CentOS 7 virtual machine and installs a BASIC MySQL database. Basic means no additional configuration file, and I will only be needing the sa user. -->

FROM centos:7

RUN yum install -y mysql-server
    yum clean all

CMD ["/usr/bin/mysqld_safe"]

EXPOSE 3306