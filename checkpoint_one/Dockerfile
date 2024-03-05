# Use the CentOS 7 base image
FROM centos:7

# Install MySQL server
RUN yum install -y mysql-server

# Start MySQL service
RUN service mysqld start

# Set the root password for MySQL (optional)
RUN mysqladmin -u root password 'your_password_here'

# Create a database and user (e.g., sa user)
RUN mysql -u root -p'your_password_here' -e "CREATE DATABASE mydatabase;"
RUN mysql -u root -p'your_password_here' -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY 'password';"
RUN mysql -u root -p'your_password_here' -e "GRANT ALL PRIVILEGES ON mydatabase.* TO 'sa'@'localhost';"
RUN mysql -u root -p'your_password_here' -e "FLUSH PRIVILEGES;"

# Expose the MySQL port
EXPOSE 3306

# Start MySQL service automatically when the container starts
CMD ["mysqld", "--user=mysql", "--console"]