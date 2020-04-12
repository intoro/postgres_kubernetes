#/bin/bash
kubectl apply -f namespace.yaml
kubectl config set-context --current --namespace=postgres-app
kubectl apply -f .