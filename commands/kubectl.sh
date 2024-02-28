kubectl create namespace uat

kubectl apply -f version1app.yaml -n uat

kubectl apply -f version2app.yaml -n uat
 
kubectl apply -f ingress.yaml -n uat

kubectl get ingress -n uat