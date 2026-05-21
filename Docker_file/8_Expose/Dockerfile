# Expose Instruction
# Expose adalah instruksi untuk memberitahu bahwa container akan listen port pada nomor dan protocol tertentu
# instruksi expose tidak akan mempublish port apapun!. instruksi expose hanya digunakan sebagai dokumentasi untuk memberitahu yang membuat docker container bahwa docker image ini akan menggunakan port tertettu

# FORMAT
# EXPOSE port # 
# EXPOSE port/tcp
# EXPOSE port/udp

# https://gist.github.com/khannedy/166be48cabb637b5beefc4e7998f2c7e

FROM golang:1.18-alpine

RUN mkdir app
COPY main.go app

EXPOSE 8080

CMD go run app/main.go

# docker build -t alifrz/expose C:\AlifFolder\Belajar\DOCKER\tutorial_docker_pemula_sampai_mahir\tutorial_docker_pemula_sampai_mahir\Docker_file\8_Expose

# docker container create --name expose -p 8080:8080 alifrz/expose
# docker container start expose
# docker container logs expose
# docker image inspect alifrz/expose

# curl localhost:8080