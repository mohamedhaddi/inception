FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

# TO-DO: replace the password with an environment variable
RUN service mysql start \
	&& mariadb -e "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" \
	&& mariadb -e "GRANT ALL ON wordpress.* TO 'wordpress_user'@'localhost' IDENTIFIED BY 'password';" \
	&& mariadb -e "FLUSH PRIVILEGES;"

