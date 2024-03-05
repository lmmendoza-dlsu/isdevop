#!/bin/bash

mysqld --user=root --daemonize

sleep 10

mysql -u root -e "CREATE USER 'sa'@'%' IDENTIFIED BY 'password';"

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'sa'@'%' IDENTIFIED BY 'password';"

mysql -u root -e "FLUSH PRIVILEGES;"

tail -f /dev/null