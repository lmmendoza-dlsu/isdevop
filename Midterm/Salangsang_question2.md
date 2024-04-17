# Use the official CentOS 7 image from Docker Hub
FROM centos:7

# Install MySQL server
RUN yum install -y mariadb-server

# Start MySQL service
CMD ["mysqld"]

# Set the root password for MySQL (optional)
# ENV MYSQL_ROOT_PASSWORD=your_password

# Create the sa user with a password
ENV MYSQL_USER=sa
ENV MYSQL_PASSWORD=your_password

# Expose MySQL default port
EXPOSE 3306