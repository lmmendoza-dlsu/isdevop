**********************************************************************
*
*     ISDEVOP
*     ISDEVOP Midterms
*     Objective: Question 2
*     
*     Author: Carlo Jose Reyes
*     Date: March 3, 2024
*     
**********************************************************************
# Dockerfile

FROM centos:7
RUN yum -y update && \
    yum install -y yum-utils mysql-server && \
    yum clean all
CMD ["mysqld"]
EXPOSE 8080