# Setiap container punya port, namun portnya tidak bisa diakses dari luar, diharuskan menggunnakan port forwarding

docker container create --name NamaContainer --publish portHost:portContainerr image:tag

# contoh 
docker container create --name contohNginx --publish 8080:80 nginx:latest
docker container start contohNginx
Buka browser dan masukan halaman ini http://localhost:8080
