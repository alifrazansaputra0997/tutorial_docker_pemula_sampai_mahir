# ENTRYPOINT adalah instruksi untuk menentukan executable file yang akan dijalankan oleh container
# Biasanya ENTRYPOINT itu erat kaitannya degan instruksi CMD
# Saat kita membuat instruksi CMD tanpa executable file, secara otomatis CMD akan menggunakn ENTRYPOINT

# Format
# ENTRYPOINT ["executable", "param1", "param2"]
# ENTRYPOINT executable param1 param2
# Saaat menggunakn CMD ["param1", "param2"] maka param tersebut akan dikirim ke ENTRYPOINT

FROM golang:1.18-alpine

RUN mkdir /app/
COPY main.go /app/

EXPOSE 8080
ENTRYPOINT ["go", "run"]
CMD ["/app/main.go"]

# Nantinya akan dieksekusi go run /app/main.go
# docker build -t alifrz/entrypoint .
# docker container create --name entrypoint -p 8080:8080 alifrz/entrypoint
# docker container start entrypoint
# docker container logs entrypoint
# docker container exec -i -t entrypoint /bin/sh'
# "Entrypoint": [
#     "go",
#     "run"
# ],