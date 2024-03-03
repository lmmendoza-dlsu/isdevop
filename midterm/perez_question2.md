**********************************************************************
*
*     ISDEVOP
*     ISDEVOP Midterm Question 2
*     Objective: Gain Understanding of Docker
*     
*     Author: Miguel Perez
*     Date: March 3, 2024
*     
**********************************************************************

# Question 02: Create a dockerfile that creates a CentOS 7 virtual machine and installs a BASIC MySQL database. Basic means no additional configuration file, and I will only be needing the sa user.

## Answer:
FROM centos:7

RUN yum -y update && \
    yum install -y yum-utils mysql-server && \
    yum clean all

CMD ["mysqld"]

EXPOSE 8080

