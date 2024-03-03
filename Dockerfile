FROM centos:7
RUN yum -y update && \
    yum install -y yum-utils mysql-server && \
    yum clean all
CMD ["mysqld"]
EXPOSE 8080