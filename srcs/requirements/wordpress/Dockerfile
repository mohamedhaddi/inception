FROM debian:buster

RUN apt-get update

RUN apt-get install -y php php-cli php-cgi php-fpm php-mysql php-zip

CMD service php7.3-fpm start && service php7.3-fpm status

