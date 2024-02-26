
FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_USER=user1
ENV MYSQL_PASSWORD=user1_password
RUN mkdir /docker-entrypoint-initdb.d/1
COPY ./sql-scripts/1.sql /docker-entrypoint-initdb.d/1/

ENV MYSQL_USER=user2
ENV MYSQL_PASSWORD=user2_password
RUN mkdir /docker-entrypoint-initdb.d/2
COPY ./sql-scripts/2.sql /docker-entrypoint-initdb.d/2/

ENV MYSQL_USER=user3
ENV MYSQL_PASSWORD=user3_password
RUN mkdir /docker-entrypoint-initdb.d/3
COPY ./sql-scripts/3.sql /docker-entrypoint-initdb.d/3/


ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes
RUN mkdir /docker-entrypoint-initdb.d/4
COPY ./sql-scripts/4.sql /docker-entrypoint-initdb.d/4/

RUN mkdir /docker-entrypoint-initdb.d/5
COPY ./sql-scripts/5.sql /docker-entrypoint-initdb.d/5/
