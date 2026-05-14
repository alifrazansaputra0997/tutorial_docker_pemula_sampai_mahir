# Sharing file atau folder dari Host ke container
Parameter
type        tipe mount, bind atau volume
source      lokasi file atau folder di dalam host
destination lokasi file atau folder di container
readonly    jika ada, maka file / folder readonly

Perintah

docker container create --name namaContainer --mount "type=bind, source=folder, destination=folder, readonly" image:tag

docker container create --name mongoData --mount "type=bind,source=C:/AlifFolder/Belajar/DOCKER/mongoData,destination=/data/db" --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=alif --env MONGO_INITDB_ROOT_PASSWORD=alif mongo:latest
docker container ls -a
docker container start mongoData
docker container ls
