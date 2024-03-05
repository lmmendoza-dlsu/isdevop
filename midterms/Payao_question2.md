# Dockerfile for CentOS 7 with Basic MySQL Installation

FROM centos:7

RUN yum install -y mysql-server && \
    yum clean all

RUN systemctl enable mysqld

# Start MySQL service
CMD ["mysqld_safe"]