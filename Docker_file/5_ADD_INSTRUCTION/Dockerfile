# ADD INSTRUCTION

# Add adalah instruksi yang dapat digunakan untuk menambahkan file dari source ke dalam folder destination di docker image
# Perintah ADD bisa mendeteksi apakah sebuah file source merupakan file kompres sperti tar.gz, gzip dll. jika mendeteksi file source adalah berupa file kompress, maka secara otomatis file tersebut akan diextract dalam folder destination
# perintah add juga bisa mendukung banyak penambahan file sekaligus
# penambahan banyak file sekaligus diinstruksi add menggunakan pettern di Go-Lang
# https://pkg.go.dev/path/filepath#Match

# pattern:
# 	{ term }
# term:
# 	'*'         matches any sequence of non-Separator characters
# 	'?'         matches any single non-Separator character
# 	'[' [ '^' ] { character-range } ']'
# 	            character class (must be non-empty)
# 	c           matches character c (c != '*', '?', '\\', '[')
# 	'\\' c      matches character c (except on Windows)

# character-range:
# 	c           matches character c (c != '\\', '-', ']')
# 	'\\' c      matches character c (except on Windows)
# 	lo '-' hi   matches character c for lo <= c <= hi

# Add Instruction FORMAT
# ADD source destination
# Contoh:
    # ADD world.txt hello # menambahkan file world.txt ke folder hello
    # ADD *.txt hello # Menambahkan semua file .txt ke folder hello


FROM alpine:3

RUN mkdir hello
ADD text/*.txt hello

CMD cat "hello/Hi.txt"

# docker build -t alifrz/add .

# docker container create --name add alifrz/add
# docker container start add
# docker container logs add
# docker container  exec -i -t add /bin/bash