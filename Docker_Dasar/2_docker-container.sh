# Melihat container yang sedang berjalan
docker container ls

# Melihat semua docker container
docker container ls -a 

# Membuat Container
docker container create --name namacontainer namaimage:tag

# Contoh 
docker container create --name contohRedis redis:latest

# Menjalankan Container
docker container start containerId/namaContianer

# Contoh 
docker container start redisPertama

# Menghentikan Container
docker container stop containerId/namaContainer

# Contoh 
docker container stop redisPertama

# Menghapus Contianer
docker container rm containerId/containerName

# Contoh 
docker container rm redisPertama