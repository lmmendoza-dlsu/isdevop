#!/bin/bash

# Start MySQL server in the background
mysqld --user=root --daemonize

# Wait for MySQL server to start
sleep 5

# Create 'sa' user and password, grant privileges
mysql -u root -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY '12345';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost' WITH GRANT OPTION;"

# Change root password
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';"

# Keep the container running
tail -f /dev/null