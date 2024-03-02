## Dockerfile for CentOS 7 with Basic MySQL Database

```dockerfile
# Start from the official CentOS 7 image
FROM centos:7

# Install MySQL server
RUN yum install -y mysql-server

# Start MySQL service
CMD ["mysqld"]

