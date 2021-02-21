# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snorthmo <snorthmo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/19 17:58:51 by snorthmo          #+#    #+#              #
#    Updated: 2021/02/21 15:51:55 by snorthmo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine:3.12

RUN		apk update
RUN		apk upgrade

RUN		wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN		wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-2.32-r0.apk
RUN		apk add glibc-2.32-r0.apk

RUN		wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.3.6.linux-amd64.tar.gz
RUN		tar -zxvf grafana-enterprise-7.3.6.linux-amd64.tar.gz
RUN		rm -f grafana-enterprise-7.3.6.linux-amd64.tar.gz

COPY 	grafana.db	/grafana-7.3.6/data/
# COPY	datasource.yaml			/usr/share/grafana/conf/provisioning/datasources/datasource.yaml
# COPY	dashboard.yaml			/usr/share/grafana/conf/provisioning/dashboards/dashboard.yaml

EXPOSE 3000

WORKDIR		/grafana-7.3.6

ENTRYPOINT	["bin/grafana-server"]
