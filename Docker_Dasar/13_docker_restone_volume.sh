docker volume create mongoRestore

docker container run --rm --name ubuntu --mount "type=bind,source=C:/AlifFolder/Belajar/DOCKER/mongoBackup,destination=/backup" --mount "type=volume,source=mongoRestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

docker container create --name mongoRestore --mount "type=volume,source=mongoRestore,destination=/data/db" --publish 27020:27017 --env MONGO_INITDB_ROOT_USERNAME=alif --env MONGO_INITDB_ROOT_PASSWORD=alif mongo:latest
docker container ls -a
docker container start mongoRestore
