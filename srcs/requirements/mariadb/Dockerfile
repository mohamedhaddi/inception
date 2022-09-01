FROM debian:buster

RUN apt-get update -y && \
    apt-get install -y mariadb-server

COPY conf/ ./

RUN service mysql start && mariadb -u root < ./setup.sql

RUN sed -i 's/bind-address/bind-address = 0.0.0.0 #/i' /etc/mysql/mariadb.conf.d/50-server.cnf

# RUN chown -R mysql:mysql /var/lib/mysql

RUN mkdir -p /tmp/mysql/
RUN cp -r /var/lib/mysql/* /tmp/mysql/

CMD bash mysql_files.sh && \
    mysqld_safe

# CMD ls /var/lib/mysql/ && mysqld_safe

# CMD	/usr/bin/mysqld_safe

# CMD service mysql start