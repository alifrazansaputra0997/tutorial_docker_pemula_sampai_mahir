# Argument
# ARG merupakan instruksi yang digunakan untuk mendefinisikan variable yang bisa digunakan oleh pengguna untuk dikirim ketika melakukan proses docker build menggunakan perintah --build-arg key=value
# ARG hanya digunakan pada saat proses BUILD TIME, artinya ketika berjalan dalam docker cotnainer, ARG tidak akan digunakan, berbeda dengan ENV yang digunakan ketika berjalan dalam container 
# Cara mengakses variable ARG sama seperti mengakses variable ENV -> ${VARIABLE_NAME}

# FORMAT
# ARG key # Membuat variable argumen, jika valuenya tidak disebut, maka akan diminta ketika membuat imagenya
# ARG KEY=DEFAULT_VALUE

FROM golang:1.18-alpine

ARG app=main

RUN mkdir app
COPY main.go app
RUN mv app/main.go app/${app}.go

EXPOSE 8080

ENV app=${app}
CMD go run app/${app}.go

# Ketika build
# Tanpa arg -> docker build -t alifrz/arg arg (karena sudah ada default value)
# Dengan arg -> docker build -t alifrz/arg arg --build-arg app=alifrz

# buld container
# docker container create --name arg -p 8080:8080 alifrz/arg
# docker container start arg
# docker container exec -i -t arg /bin/sh
# # Error response from daemon: container 3a57e2f451d02c0c2ad0c9a57f2d953baf7b2263709293de73de4a325d8eb72c is not running
# # check error
# # docker container logs arg
# stat app/.go: no such file or directory
# # docker gagal menajalankan .go, sepertinya argnya salah, check imagenya
# docker image inspect alifrz/arg
#  "Cmd": [
#     "/bin/sh",
#     "-c",
#     "go run app/${app}.go" -> ini masih salah ARG tidak berfungsi, check lagi
# ],

# Kenapa error?
# 1. Hal ini dikarenakan ARG hanya bisa diakses pada waktu build time, sedangkan CMD itu dijalankan pada saat runtime
# 2. Jadi jika kita ingin menggunakan ARG pada CMD, maka kita perlu memasukan data ARG tersebut ke ENV

# Jadi seperti ini
# FROM golang:1.18-alpine

# ARG app=main

# RUN mkdir app
# COPY main.go app
# RUN mv app/main.go app/${app}.go

# EXPOSE 8080

# ENV app=${app}
# CMD go run app/${app}.go

# REMOVE container arg dan image alifrz/arg
# docker container ls -a
# docker container rm arg
# docker image ls
# docker image rm alifrz/arg