cd ./../data

docker build -t max003003003/qoutes-back:v1 .
docker push max003003003/qoutes-back:v1

cd ./../data

docker build -t max003003003/qoutes-data:v1 .
docker push max003003003/qoutes-data:v1
