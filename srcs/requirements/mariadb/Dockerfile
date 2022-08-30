FROM debian:buster

RUN apt-get update -y && \
    apt-get install -y mariadb-server

COPY conf/setup.sql ./

RUN service mysql start && mariadb -u root < ./setup.sql

RUN sed -i 's/bind-address/bind-address = 0.0.0.0 #/i' /etc/mysql/mariadb.conf.d/50-server.cnf

# CMD	/usr/bin/mysqld_safe
CMD mysqld