#!/bin/bash
minikube start --driver=docker
kubectl apply -f rbac.yaml
kubectl apply -f network-policy.yaml
kubectl apply -f deployment.yaml
kubectl apply -f prometheus-deployment.yaml
kubectl apply -f grafana-deployment.yaml
