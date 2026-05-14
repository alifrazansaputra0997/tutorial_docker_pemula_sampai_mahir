# Command Instruction
# CMD atau Command, merupakan instruksi yag digunakan ketika docker container berjalan
# CMD tidak akan dijalankan ketika proses build, namun dijalankan ketika docker container berjalan
# Dalam dockerfile, kita tidak bisa menambah lebih dari satu instruksi CMD, jika kita tambahkan lebih dari satu instruksi CMD, maka ayang akan digunakan untuk menjalankan docker container adalah instruksi yang terakhir

# FORMAT
# CMD command param param
# CMD ["executable","param","param"]
# CMD ["param","param"]

FROM alpine:3

RUN mkdir hello
RUN echo "Hello World" > "hello/world.txt"

CMD cat "hello/world.txt"

# docker build -t alifrz/cmd C:\AlifFolder\Belajar\DOCKER\Docker_file\3_COMMAND_INSTRUCTION --progress=plain

# docker image inspect alifrz/cmd

# Kita enable volumenya ke docker

# docker container create --name command alifrz/cmd
# docker container start command
# docker container logs command