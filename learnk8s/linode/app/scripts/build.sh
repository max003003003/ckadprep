cd "$(dirname "$0")"
cd ./../data

docker build -t max003003003/qoutes-backend:v1 .
docker push max003003003/qoutes-backend:v1
cd "$(dirname "$0")"
cd ./../data

docker build -t max003003003/qoutes-data:v1 .
docker push max003003003/qoutes-data:v1
