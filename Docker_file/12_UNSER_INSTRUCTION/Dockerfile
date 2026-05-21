# User adalah instruksi yang digunakan untuk mengubah user atau user group ketika docker image dijalankan
# secara default, docker akan menggunakan user root makanya kita ganti

# INSTRUKSI USER
# USER <user> # Mengubah user
# USER <user>:<group> # Mengubah user dan group

FROM golang:1.18-alpine

RUN mkdir /app 

RUN addgroup -S alifgroup
RUN adduser -S -D -h /app alifrz alifgroup
RUN chown -R alifrz:alifgroup /app
USER alifrz

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go

# buat docker image
# docker build -t alifrz/user user 

# BUILD CONTAINER
# docker container create --name user -p 8080:8080 alifrz/user
# docker container start user
# docker container exec -i -t user /bin/sh
# whoami