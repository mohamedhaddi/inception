FROM debian:buster

RUN apt-get update -y && \
  apt-get install -y nginx openssl

RUN openssl req -x509 -newkey rsa:2048 -nodes -out /etc/ssl/certs/nginx.crt -keyout /etc/ssl/private/nginx.key -subj "/C=MA/ST=Rabat-Sale-Kenitra/L=Kenitra/O=1337/CN=mhaddi"

# RUN rm -rf /etc/nginx/sites-enabled/nginx.conf
COPY ./conf/default /etc/nginx/sites-enabled/nginx.conf
RUN ln -s /etc/nginx/sites-enabled/nginx.conf /etc/nginx/sites-available/nginx.conf

# COPY conf/default /etc/nginx/sites-enabled/default

CMD nginx -g 'daemon off;'
