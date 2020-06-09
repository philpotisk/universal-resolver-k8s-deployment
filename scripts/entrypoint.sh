#!/bin/sh

echo "Kubernetes Deployment of the Universal Resolver"

set -e

pwd 

ls -al

ls -al ~

ls -al /


echo "$KUBE_CONFIG_DATA" | base64 --decode > /tmp/config
export KUBECONFIG=/tmp/config


kubectl version --client --short

python --version

cp /convert.py /k8s-template.yaml . 2>/dev/null || :

python convert.py

ls -al

cd out

kubectl get all --all-namespaces

./deploy.sh

kubectl apply -f uni-resolver-ingress.yaml

kubectl get all --all-namespaces

