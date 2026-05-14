# .dockerignore file
FROM alpine:3

RUN mkdir hello
COPY text/* hello

CMD ls -l hello

# docker build -t alifrz/ignore C:\AlifFolder\Belajar\DOCKER\tutorial_docker_pemula_sampai_mahir\tutorial_docker_pemula_sampai_mahir\Docker_file\7_Docker_Ignore

docker container create --name ignore alifrz/ignore
docker container start ignore
docker container logs ignore