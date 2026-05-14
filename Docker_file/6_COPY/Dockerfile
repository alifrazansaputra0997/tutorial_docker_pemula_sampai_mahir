# COPY melakukan adalah instruksi yang dapat digunakan untuk menambhakan file dari source ke dalam folder destinasi di docker image
# COPY hanya melakkan copy file saja, sedeangkan add selain melakukan copy dia bisa mendownload source dari URL dan secara otomatis melakukan extract file kompres
# best practicenya sebisa mungkin menggunakan copy.
# jika butuh melakukan extract kompres gunakan perintah RUN dan jalankan aplikasi untuk extract file kompres

# COPY format
# COPY source destination
# COPY world.txt hello
# COPY *.txt hello

FROM alpine:3

RUN mkdir hello
COPY text/*.txt hello
CMD cat "hello/HelloWorld.txt"

# docker build -t alifrz/copy C:\AlifFolder\Belajar\DOCKER\tutorial_docker_pemula_sampai_mahir\tutorial_docker_pemula_sampai_mahir\Docker_file\6_COPY

docker container create --name copy alifrz/copy
docker container start copy
docker container logs copy