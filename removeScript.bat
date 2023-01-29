echo "Removendo deployments no cluster kubernetes... ... ..."

kubectl delete -f deployments.yml

echo "Removendo serviços no cluster kubernetes... ... ..."

kubectl delete -f services.yml