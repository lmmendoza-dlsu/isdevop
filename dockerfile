# Used to create a MySQL server
FROM centos:7

# Install the MySQL server
RUN yum -y install https://dev.mysql.com/get/mysql80-community-release-el7-11.noarch.rpm
RUN yum -y install mysql-server
RUN yum clean all
RUN yum -y update

# Initialize the MySQL server with insecure so that root account can be accessed without a password
RUN mysqld  --initialize-insecure

# Copy the initialization script into the container
COPY init_mysql.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/init_mysql.sh


# Start the MySQL server and configure 'sa' user
CMD ["/usr/local/bin/init_mysql.sh"]


# Expose the port
EXPOSE 3306