#!/bin/bash

minikube delete
minikube start --vm-driver=virtualbox
minikube addons enable metallb

eval $(minikube docker-env)
cd nginx
docker build -t nginx_image .
kubectl delete svc nginx-svc
kubectl delete deploy nginx-deployment
kubectl apply -f ../configmap.yaml
kubectl apply -f ../nginx.yaml
minikube dashboard