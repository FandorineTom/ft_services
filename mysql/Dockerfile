# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snorthmo <snorthmo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/13 15:59:59 by snorthmo          #+#    #+#              #
#    Updated: 2021/02/17 14:13:38 by snorthmo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.12

EXPOSE 3306

RUN apk update
RUN apk add mysql mysql-client openrc

COPY ./srcs/my.cnf /etc/
COPY ./srcs/init.sql /etc/
COPY ./srcs/run.sh .

VOLUME sys/fs/cgroup
VOLUME	["/var/lib/mysql"]
RUN chmod u+x /run.sh

ENTRYPOINT [ "sh", "run.sh" ]
