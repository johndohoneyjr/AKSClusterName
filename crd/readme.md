# Cluster Name

As part of cluster provisioning, The CRD and the actual Custom Resource can become templates in the provisioning automation.  Ssomething as simple as

```
sed s/cluster/mycustomer-cluster-name/g 
```

Can be done in a command line pipeline to change the names to make sense to your support engineers.

## Steps to use
1. Make any customizations to fit your cluster
2. Save all the files
3. kubectl apply -f cluster-crd.yaml
4. kubectl apply -f my-cluster.yaml
5. kubectl get clusters
## Code
There is a smple Python script you can run in a container to get the CRD Cluster Name from code
