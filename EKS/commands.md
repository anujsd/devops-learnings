# Install aws cli

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install


# Install kubectl

https://v1-32.docs.kubernetes.io/docs/tasks/tools/install-kubectl-linux/

# Install eksctl

https://eksctl.io/installation/

# Install helm
https://helm.sh/docs/intro/install/


# EKS Cluster creation commands

# First start with fargate
https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html

1. First create cluster using
eksctl create cluster --name first-eks --region us-east-1 --fargate

2. Check if everything good
kubectl get pods -A
kubectl get nodes -o wide

3. Create Fargate profile before launching app
eksctl create fargateprofile --cluster first-eks --name game-2048-app --namespace game-2048

aws eks describe-fargate-profile --cluster-name first-eks --fargate-profile-name eks-sample-app


4. Integrate IAM identity provider 
you need it because
- your cluster resources need to connect with aws resources like ALB
- pod want to talk to cloudwatch it needs iam identity provider

export cluster_name=first-eks
oidc_id=$(aws eks describe-cluster --name $cluster_name --query "cluster.identity.oidc.issuer" --output text | cut -d '/' -f 5) 


eksctl utils associate-iam-oidc-provider --cluster $cluster_name --approve

5. Deploy sample app on fargate
# Just to test your whole infra try deploying nginx
https://docs.aws.amazon.com/eks/latest/userguide/sample-deployment.html

# Below is sample app
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.5.4/docs/examples/2048/2048_full.yaml

5. Deploy ALB Addon
https://docs.aws.amazon.com/eks/latest/userguide/lbc-helm.html

aws iam create-policy --policy-name AWSLoadBalancerControllerIAMPolicy --policy-document file://iam_policy.json

eksctl create iamserviceaccount \
    --cluster=first-eks \
    --namespace=kube-system \
    --name=aws-load-balancer-controller \
    --attach-policy-arn=arn:aws:iam::<aws account id>:policy/AWSLoadBalancerControllerIAMPolicy \
    --override-existing-serviceaccounts \
    --region us-east-1 \
    --approve

helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName=first-eks \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller \
  --set region=us-east-1 \
  --set vpcId=vpc-08ba65e0417c19463

helm uninstall <release-name> -n <namespace>



kubectl get deployment -n kube-system aws-load-balancer-controller
