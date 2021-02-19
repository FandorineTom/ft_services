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
minikube delete
minikube start --driver=virtualbox --memory='2500' --disk-size 3000MB
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

#kubectl apply
kubectl apply -f configmap.yaml
kubectl apply -f nginx.yaml
kubectl apply -f mysql-deployment.yaml
kubectl apply -f phpmyadmin.yaml
kubectl apply -f wordpress.yaml
kubectl apply -f ftps.yaml

minikube dashboard