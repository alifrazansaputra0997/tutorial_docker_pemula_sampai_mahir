# Kita akan membuat mongoDB dan mongoExpress

docker container create --name namacontainer --network namanetwork image:tag

docker network create --driver brige mongoNetwork
# Create MongoDB
docker container create --name mongoDb --network mongoNetwork --env MONGO_INITDB_ROOT_USERNAME=alif --env MONGO_INITDB_ROOT_PASSWORD=alif mongo:latest

# Create MongoExpress
docker image pull mongo-express:latest
docker container create --name mongoDbExpress --network mongoNetwork --env ME_CONFIG_MONGODB_URL="mongodb://alif:alif@mongoDb:27017/" mongo-express:latest
# Penjelasan
# mongodb:/, Ini adalah protocol atau jenis koneksi.
# alif:alif, ini username:password
# @mongo, Ini adalah hostname atau nama server MongoDB. -> Ini adalah hostname atau nama server MongoDB. 
# :27017 Ini adalah port MongoDB.
# jika koneksi network bridge maka @mongo jika host bisa localhost

docker container start mongoDb
docker container start mongoDbExpress