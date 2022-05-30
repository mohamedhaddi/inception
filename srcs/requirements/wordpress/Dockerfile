FROM debian:buster

RUN apt-get update

RUN apt-get install -y php php-cli php-cgi php-fpm php-mysql php-zip wget

WORKDIR /var/www

RUN wget https://wordpress.org/latest.tar.gz \
	&& tar -xzvf latest.tar.gz \
	&& rm latest.tar.gz \
	&& mv wordpress inception

COPY ./conf/wp-config.php ./inception/wp-config.php

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp-cli

# this depends on the mariadb container
CMD service php7.3-fpm start && service php7.3-fpm status \
	&& wp-cli core install \
	--url= \
	--title=inception \
	--admin_user=inception_user \
	--admin_password=password \
	--admin_email=mhaddi@student.1337.ma \
	--allow-root

