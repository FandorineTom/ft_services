#!/bin/bash

kubectl delete svc nginx-svc
kubectl delete deploy nginx-deployment
kubectl delete svc mysql-svc
kubectl delete deploy mysql-deployment
kubectl delete svc phpmyadmin-svc
kubectl delete deploy phpmyadmin-deployment
kubectl delete svc wordpress-svc
kubectl delete deploy wordpress-deployment
kubectl delete svc ftps-svc
kubectl delete deploy ftps-deployment
kubectl delete svc telegraf-svc
kubectl delete deploy telegraf-deployment
kubectl delete svc influxdb-svc
kubectl delete deploy influxdb-deployment
kubectl delete svc grafana-svc
kubectl delete deploy grafana-deployment
# minikube delete
minikube start --driver=virtualbox
eval $(minikube docker-env)
minikube addons enable metallb
minikube addons enable dashboard
# minikube addons enable metrics-server

#docker build
docker build -t "nginx_image" nginx
docker build -t "mysql_image" mysql
docker build -t "phpmyadmin_image" phpmyadmin
docker build -t "wordpress_image" wordpress
docker build -t "ftps_image" ftps
docker build -t "telegraf_image" telegraf
docker build -t "influxdb_image" influxdb
docker build -t "grafana_image" grafana

#kubectl apply
kubectl apply -f configmap.yaml
kubectl apply -f nginx.yaml
kubectl apply -f mysql-deployment.yaml
kubectl apply -f phpmyadmin.yaml
kubectl apply -f wordpress.yaml
kubectl apply -f ftps.yaml
kubectl apply -f telegraf.yaml
kubectl apply -f influxdb.yaml
kubectl apply -f grafana.yaml

minikube dashboard