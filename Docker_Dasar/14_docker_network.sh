# Dengan fitur Network, kita bisa mengkoneksikan container satu dengan yang lainnya

# 1. Tentukan Network Driver 
# 2. Driver Network Bridge, yaitu driver yang digunakan untuk membuat network secara virtual yang memungkinan container yang terkoneksi di bridge network yang sama saling berkomunikasi
#       Contoh: Jika membuat Network A, dan di dalamnya ada Container A, B, C maka container tersebut bisa saling berkomunkasi
# 3. Driver Network Host, yaitu driver yang digunakan untuk membuat network yang sama dengan sistem host (Hanya berjalan di Linux)
# 4. Driver None, (isi default) Tidak bisa berkomunikasi sama sekali

# Melihat Network
docker network ls

# Membuat Network
docker network create --driver namaDriver namaNetwork
# Contoh
docker network create --driver bridge contohNetwork

# Menghapus Network
docker network rm namaNetwork

# Note: Network tidak bisa dihapus jika sedang digunakan container