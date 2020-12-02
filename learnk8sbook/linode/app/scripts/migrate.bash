cd "$(dirname "$0")"
bash -c "python3 -m yoyo apply --database mysql://root:root@data:3306/mydatabase  -b  ./../data/migrations"
