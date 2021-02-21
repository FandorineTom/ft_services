# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snorthmo <snorthmo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/17 14:29:27 by snorthmo          #+#    #+#              #
#    Updated: 2021/02/19 17:10:17 by snorthmo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		alpine:3.12

RUN			apk update
RUN 		apk upgrade
RUN			apk add vsftpd
RUN			apk add openssl

RUN			openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
			-keyout /etc/ssl/private/vsftpd.key \
			-out /etc/ssl/certs/vsftpd.pem \
			-subj "/C=RU/ST=Russia/L=Moscow/O=School21/OU=4th_Wave/CN=snorthmo"

RUN			adduser -D -h /var/ftp snorthmo
RUN			echo 'snorthmo:snorthmo' | chpasswd
COPY		vsftpd.conf		/etc/vsftpd/vsftpd.conf
RUN			mkdir -p		/var/log/ftp
COPY		./run.sh .
RUN 		chmod +x ./run.sh

EXPOSE		21
ENTRYPOINT	[ "./run.sh" ]
