---
-
- ISDEVOP
- ISDEVOP Midterm Question 2
-
- Author: Franczeska Silvestre
- Date: March 05, 2024
-
---

## Create a dockerfile that creates a CentOS 7 virtual machine and installs a BASIC MySQL database. Basic means no additional configuration file, and I will only be needing the sa user.

- The dockerfile contents are listed below and are in a separate file called `Dockerfile`:

```
FROM centos:7

ENV MYSQL_ROOT_PASSWORD=root12345

RUN yum update -y

RUN yum install -y wget && \
    wget https://dev.mysql.com/get/mysql80-community-release-el7-11.noarch.rpm && \
    rpm -ivh mysql80-community-release-el7-11.noarch.rpm

RUN yum install -y mysql-server && \
    yum clean all

RUN mysqld --initialize-insecure

CMD ["mysqld"]

EXPOSE 3306
```
