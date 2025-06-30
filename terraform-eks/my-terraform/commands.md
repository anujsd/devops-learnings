# Check aws cli is setup correctly and you can see user

aws sts get-caller-identity

# Connect to your eks cluster with kubectl

aws eks --region <your-region> update-kubeconfig --name <your-cluster-name>

aws eks --region us-east-1 update-kubeconfig --name production-prod-cluster

# Run aws cli as different user

aws configure --profile dev

aws sts get-caller-identity --profile dev

aws eks --region us-east-1 update-kubeconfig --name production-prod-cluster --profile dev

# Verify access using

```
kubectl auth can-i create pods
kubectl auth can-i * *
```

# port-forwading

kubectl port-forward -n 3-example pod/myapp-fdfdb9c5d-kdjxg 8080:8080

curl "http://localhost:8080/api/cpu?index=1000"

curl --header "Host: ex6.antonputra.com" http://k8s-6example-myapp-5aaf50db99-701908817.us-east-1.elb.amazonaws.com/about

curl --header "Host: ex8.antonputra.com" http://k8s-ingress-external-b7d971f40c-75075aa7f357e229.elb.us-east-1.amazonaws.com/about

# Going inside pod and opening bash

kubectl exec -it <pod name> -- bash

kubectl exec -n=12-example myapp-7c64bf949b-l4hbm -it -- bash

# Formatting kubernetes outputs with jsonpath

# Get all pod names in the current namespace

kubectl get pods -o jsonpath="{.items[*].metadata.name}"

# Get the ClusterIP of a service

kubectl get svc my-service -o jsonpath="{.spec.clusterIP}"

# Get the image used by a deployment

kubectl get deployment my-deployment -o jsonpath="{.spec.template.spec.containers[*].image}"

# Get the node name where a specific pod is running

kubectl get pod my-pod -o jsonpath="{.spec.nodeName}"

# List all namespaces

kubectl get ns -o jsonpath="{.items[*].metadata.name}"

kubectl get ns -o jsonpath="{range .items[*]}{.metadata.name}{'\n'}{end}"

kubectl get pods -n=kube-system -o jsonpath="{range .items[*]}{.metadata.name}{'\n'}{end}"
