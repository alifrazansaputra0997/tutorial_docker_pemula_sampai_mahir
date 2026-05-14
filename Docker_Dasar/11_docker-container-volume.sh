docker volume create mongoData
docker container create --name mongoData2 --mount "type=volume,source=mongoVolume,destination=/data/db" --publish 27018:27017 --env MONGO_INITDB_ROOT_USERNAME=alif --env MONGO_INITDB_ROOT_PASSWORD=alif mongo:latest
