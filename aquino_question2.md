For surname_question2.md: Create a dockerfile that creates a CentOS 7 virtual machine and installs a BASIC MySQL database. Basic means no additional configuration file, and I will only be needing the sa user.
Hint: There is an available image for Centos 7 in dockerhub. You can start your dockerfile with FROM centos:7.
Hint 2: Next thing to do is to install the MySQL server. If Ubuntu has apt-get, CentOS has "yum install"...

Make sure to be in the same directory as the dockerfile when you run the docker build command.
Follow the commands below in order to run dockerfile and create a CentOS 7 virtual machine and install a BASIC MySQL database.

Commands:
docker build -t centos7_mysql .
docker run -d --name devOpsSql1 -p 3307:3306 centos7_mysql
docker exec -it devOpsSql1 mysql -u sa -p12345

Proof Working Completion:

Build Container:
![DockerBuild](/image/DockerBuild Finished.png) 

Install, Run and Execute MySQL:
![DockerBuild2](/image/DockerBuild Running and Logging.png) 


Running Container:
![DockerBuild3](/image/Docker Container Running.png) 

