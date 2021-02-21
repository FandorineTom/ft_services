# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snorthmo <snorthmo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/19 17:45:48 by snorthmo          #+#    #+#              #
#    Updated: 2021/02/19 17:46:25 by snorthmo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

RUN apk update
RUN apk add influxdb
RUN apk add --no-cache --upgrade bash

VOLUME ["var/lib/"]
EXPOSE 8086

CMD influxd run -config /etc/influxdb.conf