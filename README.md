gcloud container clusters get-credentials gcp-dev --zone europe-west4-a --project %%%

docker build -t gcr.io/%%%/helloworld:latest .
docker push gcr.io/%%%/helloworld:latest
kubectl apply -f kube_deployment.yaml
kubectl get pods
kubectl apply -f kube_loadbalancer.yaml
kubectl get svc

watch -n 1 kubectl get pods
watch -n 1 curl -s IP

kubectl delete pod helloworld-deployment-65ff4db5d6-6kcr5

kubectl delete deployment helloworld-deployment
kubectl delete svc helloworld-service