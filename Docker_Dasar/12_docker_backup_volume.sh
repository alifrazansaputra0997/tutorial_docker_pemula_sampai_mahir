# Pertama harus ada volume yang akan dibackup

# FLOW
docker volume create MongoData
docker container create --name MongoVolume --mount "type=volume,source=MongoData,destination=/data/db" --publish 27019:27017 --env MONGO_INITDB_ROOT_USERNAME=alif --env MONGO_INITDB_ROOT_PASSWORD=alif mongo:latest
docker container start MongoVolume
docker container ls
# NAH sekarang kita sudah punya init mongo, lalu kita mulai untuk backup

docker stop MongoVolume
docker container create --name nginxBackup --mount "type=bind,source=C:/AlifFolder/Belajar/DOCKER/mongoBackup,destination=/backup" --mount "type=volume,source=MongoData,destination=/data" nginx:latest

docker container start nginxBackup
docker container exec -i -t nginxBackup /bin/bash

tar cvf /backup/backup.tar.gz /data

docker container stop nginxBackup

docker container rm nginxBackup

docker container start MongoVolume
# # Penjelasan
# 1. Mount Pertama, digunakan untuk mengambil database mongo dari container ke HOST
# 2. Mount Kedua, digunakan untuk mengambil database mongo dari volume MongoData dan datanya diletakan di /data
# 3. ketika kita melakukan tar cvf /backup/backup.tar.gz /data, maka kita akan melakukan rar dari /data tempat database mongo ke dalam folder backup
# 4. setelah berhasil di tar maka akan muncul di Host

docker container run --rm --name ubuntu --mount "type=bind,source=C:/AlifFolder/Belajar/DOCKER/mongoBackup,destination=/backup" --mount "type=volume,source=MongoData,destination=/data" ubuntu:latest tar cvf /backup/backup.tar.gz /data