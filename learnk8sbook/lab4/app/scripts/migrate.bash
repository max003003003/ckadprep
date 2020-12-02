cd "$(dirname "$0")"
bash -c "python3 -m yoyo apply --database mysql://root:root@127.0.1:3306/mydatabase  -b  ./../data/migrations"
