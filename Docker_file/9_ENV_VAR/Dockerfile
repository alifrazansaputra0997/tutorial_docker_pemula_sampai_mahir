# ENV adalah instruksi yang digunakan untuk mengubah env variable, baik itu ketika tahapan build atau ketika jalan dalam docker container
#  ENV yang sudah didefinisikan di dalam dockerfile bisa dingunakan kembali dengan menggunakan sintaks ${NAMA_ENV}
# ENV variable yang dibuat menggunakan instruksi ENV disimpan di dalalm docker image dan bisa dilihat menggunakan perintah docker image inspect
# selain itu, env variable juga bisa diganti nilainya ketika pembuatan docker container dengan perintah docker container create --env Key=value

# Format 
# ENV KEY=value
# ENV key=value key2=value2

# https://gist.github.com/khannedy/e8574fdd9bebfb433a256e7e89f1d5ca

FROM golang:1.18-alpine
ENV APP_PORT=8080
ENV APP_DATA=/logs

RUN mkdir ${APP_DATA}
RUN mkdir app

COPY main.go app

EXPOSE ${APP_PORT}
CMD go run app/main.go

# docker build -t alifrz/env C:\AlifFolder\Belajar\DOCKER\tutorial_docker_pemula_sampai_mahir\tutorial_docker_pemula_sampai_mahir\Docker_file\9_ENV_VAR
# docker container create --name env --env APP_PORT=8070 -p 8070:8070 alifrz/env
# docker container start env
# docker container logs env
# docker image inspect alifrz/env