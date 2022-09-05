FROM debian:buster

RUN apt-get update -y && \
    apt-get install -y php-fpm php-mysql curl

RUN sed 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/' -i /etc/php/7.3/fpm/pool.d/www.conf

RUN echo "clear_env = no" >> /etc/php/7.3/fpm/pool.d/www.conf

RUN mkdir /tmp_files

COPY conf/* /tmp_files/

WORKDIR /tmp_files

RUN curl -LO https://wordpress.org/latest.tar.gz && \
    tar xzf latest.tar.gz --directory . && \
    mv ./wp-config.php ./wordpress

RUN curl -LO https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /run/php
RUN mkdir -p /var/www/wordpress

CMD bash wp-install.sh && \
    php-fpm7.3 -F -R

# php-fpm7.3 --help
# -F, --nodaemonize 
# force to stay in foreground, and ignore daemonize option from config file
# -R, --allow-to-run-as-root
# Allow pool to run as root (disabled by default)
