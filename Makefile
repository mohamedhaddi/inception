NAME =   inception

$(NAME): set_redirect
	 sudo mkdir -p ${HOME}/data/wordpress ${HOME}/data/mariadb
	 sudo docker-compose -f srcs/docker-compose.yml up

up: 	 $(NAME)

down:
	 sudo docker-compose -f srcs/docker-compose.yml down

prune: 	 down
	 sudo docker system prune --all --force --volumes
	 sudo docker volume rm mariadb_volume wordpress_volume

re: 	 prune up

set_redirect:
	 @if ! grep -q -E '^127\.0\.0\.1\s+mhaddi.42.fr' /etc/hosts ; then \
		 echo "Making change to /etc/hosts (redirect mhaddi.42.fr to localhost)"; \
		 sudo sh -c 'echo "127.0.0.1\tmhaddi.42.fr" >> /etc/hosts'; \
	 fi

.PHONY:  up down prune re set_redirect
