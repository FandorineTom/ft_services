#!/bin/bash

# kubectl delete svc nginx-svc
# kubectl delete deploy nginx-deployment
# kubectl delete svc mysql-svc
# kubectl delete deploy mysql-deployment
# kubectl delete svc phpmyadmin-svc
# kubectl delete deploy phpmyadmin-deployment
# kubectl delete svc wordpress-svc
# kubectl delete deploy wordpress-deployment
# kubectl delete svc ftps-svc
# kubectl delete deploy ftps-deployment
# kubectl delete svc telegraf-svc
# kubectl delete deploy telegraf-deployment
# kubectl delete svc influxdb-svc
# kubectl delete deploy influxdb-deployment
# kubectl delete svc grafana-svc
# kubectl delete deploy grafana-deployment
# kubectl delete persistentvolume/influxdb-pv-volume
# kubectl delete persistentvolumeclaim/influxdb-pv-claim
# minikube delete
minikube start --driver=virtualbox
eval $(minikube docker-env)
minikube addons enable metallb
minikube addons enable dashboard
# minikube addons enable metrics-server

#docker build
docker build -t "nginx_image" srcs/nginx
docker build -t "mysql_image" srcs/mysql
docker build -t "phpmyadmin_image" srcs/phpmyadmin
docker build -t "wordpress_image" srcs/wordpress
docker build -t "ftps_image" srcs/ftps
docker build -t "telegraf_image" srcs/telegraf
docker build -t "influxdb_image" srcs/influxdb
docker build -t "grafana_image" srcs/grafana

#kubectl apply
kubectl apply -f srcs/yaml/configmap.yaml
kubectl apply -f srcs/yaml/nginx.yaml
kubectl apply -f srcs/yaml/mysql-deployment.yaml
kubectl apply -f srcs/yaml/phpmyadmin.yaml
kubectl apply -f srcs/yaml/wordpress.yaml
kubectl apply -f srcs/yaml/ftps.yaml
kubectl apply -f srcs/yaml/telegraf.yaml
kubectl apply -f srcs/yaml/influxdb.yaml
kubectl apply -f srcs/yaml/grafana.yaml

minikube dashboard