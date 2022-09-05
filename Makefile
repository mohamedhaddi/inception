NAME = inception

$(NAME): set_redirect
	sudo docker-compose -f srcs/docker-compose.yml up

all: $(NAME)

clean:
	sudo docker-compose -f srcs/docker-compose.yml down

fclean: clean

re: fclean all

set_redirect:
	@if ! grep -q -E '^127\.0\.0\.1\s+mhaddi.42.fr' /etc/hosts ; then \
		echo "Making change to /etc/hosts (redirect mhaddi.42.fr to localhost)"; \
		sudo sh -c 'echo "127.0.0.1\tmhaddi.42.fr" >> /etc/hosts'; \
	fi

.PHONY: all clean fclean re set_redirect
