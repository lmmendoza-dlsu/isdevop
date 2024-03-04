***********************************************************************
*
* ISDEVOP S16
* Midterms Question 2
*
* Author: Reaven Manuelle L. Roque
* Date: March 4, 2024
*
**********************************************************************


-- Create a dockerfile that creates a CentOS7 and install a basic mysql database.

FROM centos:7

-- install mysqlserver

RUN yum install -y mysql-server

--start sqlservice
RUN service mysqld start

--setup sa user
RUN mysql -e "CREATE USER 'sa'@'localhost' IDENTIFIED BY 'p@ssw0rd123456';" RUN mysql -e "GRANT ALL PRIVILEGES ON . TO 'sa'@'localhost';"

--port
EXPOSE 3306


--start
CMD ["mysqld"]