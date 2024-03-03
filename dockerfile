# Use the CentOS 7 image from Docker Hub
FROM centos:7

# Import the GPG key from the keyserver
RUN rpm --import https://www.centos.org/keys/RPM-GPG-KEY-CentOS-7

# Import the GPG key for the MySQL repository
RUN rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022

# Add the MySQL repository
RUN yum-config-manager --add-repo https://repo.mysql.com/yum/mysql-8.0-community/docker/x86_64/

# Update the package lists for upgrades and new package installations
RUN yum -y update

# Install the MySQL server
RUN yum install mysql-community-server

# Create the sa user for the MySQL database
RUN useradd -r sa

# Set the password for the sa user
RUN echo 'sa:12345' | chpasswd

# Use the sa user to run the MySQL service
USER sa

# Run the MySQL service when the container starts
CMD ["service", "mysqld", "start"]

# Expose the default MySQL port
EXPOSE 3306
