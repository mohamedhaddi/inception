FROM debian:buster

RUN apt-get update

# will start running upon installation
RUN apt-get install -y nginx

RUN apt-get install -y php-fpm php-mysql

RUN mkdir /var/www/inception

COPY ./conf/inception.conf /etc/nginx/sites-available/inception.conf
