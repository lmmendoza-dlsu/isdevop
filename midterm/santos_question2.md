**********************************************************************
*
*     ISDEVOP
*     ISDEVOP Midterm Exam
*     Objective: Question 2
*     
*     Author: Jerrick Ezekiel Santos
*     Date: March 3, 2024
*     
**********************************************************************

# Using CENTOS 7
FROM centos:7

# Install/Update Utilities and MySQL Server
RUN yum -y update && \
    yum install -y yum-utils mysql-server && \
    yum clean all

# Startup Command 
CMD ["mysqld"]

# Expose Port
EXPOSE 8080