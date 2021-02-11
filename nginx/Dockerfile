# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snorthmo <snorthmo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/04 13:13:15 by snorthmo          #+#    #+#              #
#    Updated: 2021/02/12 00:38:34 by snorthmo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12


RUN 	apk update
RUN 	apk upgrade
RUN 	apk add nginx
RUN 	apk add openssl
RUN 	apk add openssh
RUN 	apk add supervisor


RUN		mkdir -p /var/www/nginx 

COPY 	./srcs/my.html		/var/www/nginx/my.html

#GET SSL
RUN		mkdir /etc/nginx/ssl
RUN		openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
		-out /etc/nginx/ssl/cert.pem -keyout /etc/nginx/ssl/key.key \
		-subj "/C=RF/ST=Msk/L=Moscow/O=21sch/OU=snorthmo/CN=nginx-rout"

#nginx.config
COPY	./srcs/supervisor.conf /etc/
COPY	./srcs/nginx_conf /etc/nginx/conf.d/nginx.conf
RUN		rm -rf /etc/nginx/conf.d/default*
COPY	./srcs/start.sh .
RUN 	chmod +x ./start.sh
RUN		mkdir -p /run/nginx

EXPOSE 80 443 22

ENTRYPOINT [ "./start.sh" ]
