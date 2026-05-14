b = byte
k = kilo byte
m = mega byte
g = giga byte

--cpus 1 (1 core) 
--cpus 2 (2 core)
--cpus 1.5 (1 setengah 5 core)

perintah 
docker container create --name smallNginx --publish 8081:80 --memory 100m --cpus 0.5 nginx:latest
docker container start smallNginx
docker container stats