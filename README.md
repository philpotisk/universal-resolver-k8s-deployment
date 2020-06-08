# Kubernetes Deployment of the Universal Resolver

## Usage with Docker
Setting the environment:

    export KUBE_CONFIG_DATA=$(cat /home/pp/dev/devops/universal-resolver-kubernetes/aws/danubetech-dev-cluster10/danubetech-dev-cluster10-KUBE_CONFIG_DATA.txt)

Build:

    docker build -t ur-deployer .

Run:

    docker run -t ur-deployer


## Usage via script
Setting the environment:

    export KUBECONFIG=/home/pp/dev/devops/universal-resolver-kubernetes/aws/danubetech-dev-cluster10/kubeconfig-danubetech-dev-cluster10.yaml

Run:

    cd scripts
    ./entrypoint.sh