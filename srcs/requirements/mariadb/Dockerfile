FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

# TO-DO: replace the password with an environment variable
RUN service mysql start \
	&& mariadb -e "CREATE DATABASE inception DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" \
	&& mariadb -e "GRANT ALL ON inception.* TO 'inception_user'@'localhost' IDENTIFIED BY 'password';" \
	&& mariadb -e "FLUSH PRIVILEGES;"

CMD service mysql start \
	&& service mysql status \
	&& tail -f /var/log/mysql/error.log
