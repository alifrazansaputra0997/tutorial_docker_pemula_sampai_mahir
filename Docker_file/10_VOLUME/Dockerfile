# Volume instruksi

# Volume merupakan instruksi yang digunakan untuk membuat volume secara otomatis ketika kita membuat docker container
# Semua file yang terdapat divolume secara otomatis akan otomatis dicopy ke docker volume
#walaupun kita tidak membuat docker volume ketika membuat docker containernya
# ini sangat cocok pada kasus ketika aplikasi kita misal menyimpan data di dalam file, sehingga data bisa secara otomatis aman berada di docker volume

# Format
# VOLUME /lokasi/folder
# VOLUME /lokasi/folder1 /lokasi/folder2
# VOLUME ["/lokasi/folder1","/lokasi/folder2"]

# https://gist.github.com/khannedy/d788b386297caf04b39640bec43f3131

FROM golang:1.18-alpine
ENV APP_PORT=8080
ENV APP_DATA=/logs

RUN mkdir ${APP_DATA}
RUN mkdir app
COPY main.go app

EXPOSE ${APP_PORT}
VOLUME ${APP_DATA}
CMD go run app/main.go

# docker build -t alifrz/volume C:\AlifFolder\Belajar\DOCKER\tutorial_docker_pemula_sampai_mahir\tutorial_docker_pemula_sampai_mahir\Docker_file\10_VOLUME

# docker image inspect alifrz/volume

# docker container create --name volume -p 8080:8080 alifrz/volume
# docker container start volume
# docker container logs volume

# docker container logs volume

# docker container inspect volume
# docker volume ls