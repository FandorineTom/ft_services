# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snorthmo <snorthmo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/19 17:45:48 by snorthmo          #+#    #+#              #
#    Updated: 2021/02/21 15:25:37 by snorthmo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

RUN apk update
RUN apk add influxdb

# VOLUME /var/lib/influxdb
EXPOSE 8086

CMD influxd