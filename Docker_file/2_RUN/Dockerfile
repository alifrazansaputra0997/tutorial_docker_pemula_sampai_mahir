# Run adalah seubah instruksi u/mengeksekusi perintah di dalam image pada saat build stage
# Hasil perintah RUN akan dicommit dalam perubahaan image tersebut, jadi perintah RUN akan dieksekusi pada saat proses docker build saja,
# setelah menjadi docker image, perintah tersebut tidak dijalankan lagi.
# jadi ketika kita menjalankan dokcer container dari image tersebut, maka perintah RUN tidak akan diajlankan lagi.
# 
# RUN FORMAT
# RUN command
# RUN ["executable","argument"]

FROM alpine:3

RUN mkdir hello
RUN echo "HELLO WORLD" > "hello/world.txt"
RUN cat "hello/world.txt"

# docker build -t alifrz/run C:\AlifFolder\Belajar\DOCKER\Docker_file\2_RUN --progress=plain --no-cache

# Kalau mau lihat display outputnya

# --progress=plan
# --no-cahce