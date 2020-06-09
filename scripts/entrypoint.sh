#!/bin/sh

echo "Kubernetes Deployment of the Universal Resolver"

set -e

pwd 

ls -al

ls -al /


echo "$KUBE_CONFIG_DATA" | base64 --decode > /tmp/config
export KUBECONFIG=/tmp/config

cat /tmp/config

echo $KUBECONFIG

kubectl version --client --short

echo "kubectl get all --all-namespaces"

kubectl get all --all-namespaces

cp /convert.py /k8s-template.yaml . 2>/dev/null || :

python --version

python convert.py

ls -al

cd out

./deploy.sh

kubectl apply -f uni-resolver-ingress.yaml

kubectl get all --all-namespaces

