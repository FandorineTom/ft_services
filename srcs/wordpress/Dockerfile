# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snorthmo <snorthmo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/16 23:48:09 by snorthmo          #+#    #+#              #
#    Updated: 2021/02/17 14:14:21 by snorthmo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:3.12

RUN		apk update
RUN		apk upgrade
RUN		apk add openrc php7 php7-fpm php7-json php7-mysqli nginx supervisor

RUN		mkdir -p /var/run/php
RUN		mkdir -p /run/nginx
RUN		wget https://wordpress.org/latest.tar.gz
RUN		tar -xf latest.tar.gz
RUN		mv wordpress 		/var/www

COPY	srcs/php-fpm.conf		/etc/php7/php-fpm.conf
COPY	srcs/wp-config.php		/var/www/wordpress/wp-config.php
COPY	srcs/default.conf		/etc/nginx/conf.d/default.conf
COPY	srcs/supervisor.conf	/etc/supervisor.conf
COPY	srcs/start.sh start.sh
RUN		chmod u+x start.sh

EXPOSE	5050

ENTRYPOINT [ "./start.sh" ]
