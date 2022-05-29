FROM debian:buster

RUN apt-get update

RUN apt-get install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

RUN systemctl restart php7.3-fpm.service
