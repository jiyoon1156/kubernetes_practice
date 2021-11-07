#!/bin/sh

echo "Building docker images..."
docker build -t elasticsearch_img ./elasticsearch
docker build -t kibana_img ./kibana
docker build -t express_img ./express
docker build -t vue_img ./vue

echo "Apply to K8S..."
kubectl create -f ./k8s/elasticsearch.yaml
kubectl create -f ./k8s/kibana.yaml
kubectl create -f ./k8s/express.yaml
kubectl create -f ./k8s/vue.yaml

# echo "Launching dashboard..."
# kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0/aio/deploy/recommended.yaml
# kubectl proxy

# 대시보드 주소
# http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/ 

echo "Check out K8S Token"
kubectl -n kube-system describe secret

echo "Check out pods and services..."
kubectl get pod
kubectl get services