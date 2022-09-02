FROM debian:buster

RUN apt-get update -y && \
    apt-get install -y mariadb-server

COPY conf/ ./

RUN service mysql start && mariadb -u root < ./setup.sql

RUN sed -i 's/bind-address/bind-address = 0.0.0.0 #/i' /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir -p /tmp_mysql/ && \
    cp -r /var/lib/mysql/* /tmp_mysql/

CMD bash mysql_files.sh && \
    mysqld_safe
