# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snorthmo <snorthmo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/14 15:53:45 by snorthmo          #+#    #+#              #
#    Updated: 2021/02/15 00:14:59 by snorthmo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

EXPOSE 5000

RUN apk update
RUN apk upgrade
RUN apk add openssh
RUN apk add php7 php7-fpm php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
RUN apk add wget

WORKDIR /www/
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.xz
RUN tar -xf phpMyAdmin-5.0.2-english.tar.xz
RUN rm -rf phpMyAdmin-5.0.2-english.tar.xz
RUN mv phpMyAdmin-5.0.2-english phpmyadmin

COPY srcs/run.sh .
COPY srcs/config.inc.php phpmyadmin/config.inc.php
RUN chmod 660 phpmyadmin/config.inc.php
RUN chmod u+x run.sh

ENTRYPOINT [ "sh", "./run.sh" ]