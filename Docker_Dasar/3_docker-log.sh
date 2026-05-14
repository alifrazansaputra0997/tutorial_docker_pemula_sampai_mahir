# Melihat container log

docker contianer logs containerId/namaContainer

docker container logs -f containerId/namaContainer # -f untuk realtime

# Contoh
1. Membuat container
docker container create --name contohRedis redis:latest

2. Start Container
docker container start contohRedis

3. Melihat logs
docker container logs contohRedis

4. Melihat secara live
docker container logs -f contohRedis