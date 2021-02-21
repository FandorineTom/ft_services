# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snorthmo <snorthmo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/19 16:00:52 by snorthmo          #+#    #+#              #
#    Updated: 2021/02/21 14:28:26 by snorthmo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:3.12

RUN		apk update
RUN		apk add --no-cache --upgrade bash
RUN		apk --no-cache add ca-certificates
RUN		mkdir /etc/telegraf
RUN		wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz

RUN		tar -C . -xzf telegraf-1.13.3-static_linux_amd64.tar.gz
RUN		chmod +x telegraf/*
RUN		cp telegraf/telegraf /usr/bin/
RUN		rm -rf /var/cache/apk/*
RUN		rm -rf *.tar.gz* telegraf/

COPY	telegraf.conf /etc/telegraf/telegraf.conf

EXPOSE	8085

CMD		exec /usr/bin/telegraf $@
