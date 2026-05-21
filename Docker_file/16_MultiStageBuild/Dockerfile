# MASALAH IMAGE SIZE

# Saat membuat dockerfile dari base image yang besar, secara otomatis ukuran imagenya pun akan menjadi besar juga
# Oleh karena itu, usahakan selalu menggunakna base image yang memang sesuai kebutuhan

# Multi Stage Build
# Dalam docker bisa membuat tahapan build image
# Kita bisa menggunakan beberapa instruksi FROM

FROM golang:1.18-alpine as builder
WORKDIR /app/
COPY main.go .
RUN go build -o /app/main main.go

FROM alpine:3
WORKDIR /app/
COPY --from=builder /app/main ./
CMD /app/main

# docker build -t alifrz/multi multi
# docker container create --name multi -p 8080:8080 alifrz/multi
# docker container start multi
# docker container logs multi