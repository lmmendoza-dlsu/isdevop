# Using CENTOS 7
FROM centos:7

# Install/Update Utilities and MySQL Server
RUN yum -y update && \
    yum install -y yum-utils mysql-server && \
    yum clean all

CMD ["mysqld"]

EXPOSE 8080