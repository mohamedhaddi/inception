FROM debian:buster

RUN apt-get update

# will start running upon installation
RUN apt-get install -y nginx

RUN mkdir /var/www/inception

COPY ./conf/inception.conf /etc/nginx/sites-available/inception.conf
RUN ln -s /etc/nginx/sites-available/inception.conf /etc/nginx/sites-enabled/

CMD service nginx start
