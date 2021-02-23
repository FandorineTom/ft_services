# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snorthmo <snorthmo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/14 15:53:45 by snorthmo          #+#    #+#              #
#    Updated: 2021/02/23 14:03:12 by snorthmo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

RUN 	apk update && \
		apk add openrc 
RUN     apk add nginx supervisor \
        php7 php7-fpm php7-mysqli \ 
        php7-zlib php7-curl php7-mbstring \
        php7-json php7-session
RUN     mkdir -p /www/
RUN     wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz && \
        tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz && \
        rm phpMyAdmin-5.0.2-all-languages.tar.gz && \
        mv phpMyAdmin-5.0.2-all-languages /www/phpmyadmin

COPY 	./srcs/default.conf /etc/nginx/conf.d/default.conf
COPY    ./srcs/config.inc.php /www/phpmyadmin/
COPY 	./srcs/supervisor.conf /etc/supervisord.conf
COPY    ./srcs/run.sh .

RUN 	chmod +x run.sh

EXPOSE  5000

CMD     [ "sh", "run.sh" ]