#!/bin/sh

echo "Kubernetes Deployment of the Universal Resolver"

set -e

ls -al

echo "$KUBE_CONFIG_DATA" | base64 --decode > /tmp/config
export KUBECONFIG=/tmp/config

kubectl version --client --short

python --version

python convert.py