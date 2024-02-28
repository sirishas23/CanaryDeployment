kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.5.4/cert-manager.yaml


wget https://github.com/kubernetes-sigs/aws-load-balancer-controller/releases/download/v2.4.7/v2_4_7_full.yaml

sudo nano v2_4_7_full.yaml

# search for cluster name in the file and change that with your cluster name (in my case it is on line number 813)

kubectl apply -f v2_4_7_full.yaml

wget https://github.com/kubernetes-sigs/aws-load-balancer-controller/releases/download/v2.4.7/v2_4_7_ingclass.yaml

kubectl apply -f v2_4_7_ingclass.yaml