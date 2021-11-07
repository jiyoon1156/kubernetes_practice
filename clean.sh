#!/bin/sh

kubectl delete deployment --all
kubectl delete svc --all 
kubectl delete rc --all
kubectl delete pod --all

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -aq)