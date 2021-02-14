#!/bin/bash

kubectl delete svc nginx-svc
kubectl delete deploy nginx-deployment
kubectl delete svc mysql-svc
kubectl delete deploy mysql-deployment
kubectl delete svc phpmyadmin-svc
kubectl delete deploy phpmyadmin-deployment
# minikube delete
minikube start --vm-driver=virtualbox
eval $(minikube docker-env)
minikube addons enable metallb
minikube addons enable dashboard
# minikube addons enable metrics-server

#docker build
docker build -t "nginx_image" nginx
docker build -t "mysql_image" mysql
docker build -t "phpmyadmin_image" phpmyadmin

#kubectl apply
kubectl apply -f configmap.yaml
kubectl apply -f nginx.yaml
kubectl apply -f mysql-deployment.yaml
kubectl apply -f phpmyadmin.yaml

minikube dashboard