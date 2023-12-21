# Variables
AKS_RG="walmart-cluster"  # Replace with your resource group name
AKS_NAME="walmartaks"  # Replace with your AKS cluster name
NODE_RG="walmartaksinfra"  # Replace with your desired node resource group name

# Create a resource group
az group create --name $AKS_RG --location eastus

# Create an AKS cluster with a custom node resource group name
az aks create --name $AKS_NAME --resource-group $AKS_RG --node-resource-group $NODE_RG --generate-ssh-keys

# Get KUBECONFIG for kubectl
az aks get-credentials -n $AKS_NAME -g $AKS_RG
