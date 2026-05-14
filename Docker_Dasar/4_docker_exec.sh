# Fitur Exec digunakan untuk mengeksekusi kode program yang ada di dalam container.

# Perintah
docker container exec -i -t containerId/containerName /bin/bash
# -i = argument interaktif, menjaga input tetap aktif
# -t alokasi pseudo-TTY (terimanal akses)

# contoh masuk kedalam container redis
1. Membuat container terlebih dahulu
docker container create --name contohRedis2 redis:latest

2. Run Container
docker container start contohRedis2

3. Menjalankan perintah exec
docker container exec -i -t contohRedis2 /bin/bash

4. sudah masuk maka anda bisa menajalankan aplikasi redis di dalam kontainer tsb.

redis-cli
set alif "Alif Razan Saputra"
get alif
