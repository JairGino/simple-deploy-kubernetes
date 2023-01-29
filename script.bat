echo "Criando as imagens... ... ..."

docker build -t srjaizer/proj-backend:1.0 backend/.
docker build -t srjaizer/proj-database:1.0 database/.

echo "Realizando push das imagens... ... ..."

docker push srjaizer/proj-backend:1.0
docker push srjaizer/proj-database:1.0

echo "Iniciando cluster de nó unico local... ... ..."

minikube start

echo "Criado deployments no cluster kubernetes... ... ..."

kubectl apply -f deployments.yml

echo "Criado servicos no cluster kubernetes... ... ..."

kubectl apply -f services.yml