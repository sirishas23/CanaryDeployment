curl -o iam-policy.json https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.4.7/docs/install/iam_policy.json  

aws iam create-policy \
    --policy-name AWSLoadBalancerControllerIAMPolicy \
    --policy-document file://iam-policy.json


eksctl create iamserviceaccount \
--cluster=<your-cluster-name> \
--namespace=kube-system \
--name=aws-load-balancer-controller \
--attach-policy-arn=arn:aws:iam::238393102293:policy/AWSLoadBalancerControllerIAMPolicy \
--override-existing-serviceaccounts \
--region <your-region-name> \
--approve