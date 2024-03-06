# Question 2: For surname_question2.md: Create a dockerfile that creates a CentOS 7 virtual machine and installs a BASIC MySQL database. Basic means no additional configuration file, and I will only be needing the sa user.
# Hint: There is an available image for Centos 7 in dockerhub. You can start your dockerfile with FROM centos:7.
# Hint 2: Next thing to do is to install the MySQL server. If Ubuntu has apt-get, CentOS has "yum install"...



FROM centos:7

RUN yum install -y wget gnupg

RUN rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023

RUN wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
    rpm -ivh mysql80-community-release-el7-3.noarch.rpm && \
    yum install -y mysql-community-server && \
    yum clean all && \
    rm -f mysql80-community-release-el7-3.noarch.rpm

RUN /usr/sbin/mysqld --initialize-insecure --user=mysql --basedir=/usr --datadir=/var/lib/mysql --lc-messages=en_US

CMD ["/usr/sbin/mysqld", "--datadir=/var/lib/mysql", "--user=mysql", "--port=3306"]

EXPOSE 3306
