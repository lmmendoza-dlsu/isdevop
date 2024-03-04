#!/bin/bash

# Start MySQL server in the background with root user
mysqld --user=root --daemonize

# Wait for MySQL server to start
sleep 5

# Create 'sa' user and password, grant privileges; User: sa, Password: 12345
mysql -u root -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY '12345';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'localhost' WITH GRANT OPTION;"

# Since initialization is insecure, no password. Thus, set root password. User: root, Password: 12345
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';"

# Keep the container running
tail -f /dev/null