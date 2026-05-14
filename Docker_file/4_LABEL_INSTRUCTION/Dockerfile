# Label Instruction
# Instruksi label merupakan instruksi yang digunakan untuk menambahkan metadata ke dalam docker image yang kita buat
# Metadata adalah informasi tambahan misal seperti nama aplikasi, pembuat, website, perusahaan, lisensi dll
# metadaata hanya berguna sebagai informasi saja, tidaka akan dungakan ketika kita menjalakan docker container

# FORMAT
# LABEL <key>=<value>
# LABEL <key1>=<value1> <key2>=<value2>

FROM alpine:3

LABEL author="Alif Razan Saputra"
LABEL website="https://alifrazansaputra.com"

RUN mkdir hello
RUN echo "Hello Wolrd" > "hello/world.txt"

CMD cat "hello/world.txt"

# BUILD -> docker build -t alifrz/label C:\AlifFolder\Belajar\DOCKER\tutorial_docker_pemula_sampai_mahir\tutorial_docker_pemula_sampai_mahir\Docker_file\4_LABEL_INSTRUCTION

# docker image inspect alifrz/label