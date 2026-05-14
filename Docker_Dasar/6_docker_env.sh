docker container create --name namaContainer --env KEY="value" --env KEY="value" image:tag
# contoh

docker image pull mongo:latest
docker container create --name contohMongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=alif --env MONGO_INITDB_ROOT_PASSWORD=alif mongo:latest
docker container ls -a
docker container start contohMongo
