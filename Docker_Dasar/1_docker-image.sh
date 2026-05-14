# Instaler untuk container, isinya aplikasi dan dependency yang dibutuhkan
# Tanpa image docker container tidak bisa dijalankan
# Download Image dari https://hub.docker.com

docker image ls # Melihat image yang ada di docker local

# Download Docker Hub
docker image pull redis:latest

# Menghapus Docker Image
docker image rm redis:latest