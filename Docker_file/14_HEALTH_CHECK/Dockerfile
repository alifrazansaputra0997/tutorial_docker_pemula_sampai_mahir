# Helcheck
# HEALTHCHECK adalah istruksi yang digunakan untuk memberi tahu
# mengecheck apakah container masih berjalan dengan baik atau tidak
# secara otomatis container akan memilih status health, dari awal bernilai starting, jika sukses maka healthy jika gagal maka unhealty

# FORMAT
# HEALTHCHECK NONE # ini adalah default, tanpa checking health
# HEALTHCHECK [OPTION] CMD command
# OPTIONS
# --interval=DURATION (default: 30s)
# --timeout=DURATION (default: 30s)
# --start-period=DURATION (default: 0s)
# --retries=N (default: 3)

# Simple project
# https://gist.github.com/khannedy/08d52d1d9b7b41b34535df85509417b4


FROM golang:1.18-alpine

RUN apk --no-cache add curl
RUN mkdir app
COPY main.go app

EXPOSE 8080

HEALTHCHECK --interval=5s --start-period=5s CMD curl -f http://localhost:8080/health
CMD go run app/main.go

# BUILD
# docker build -t alifrz/health .
# docker container create --name health -p 8080:8080 alifrz/health
# docker container start health
# docker container ls
# docker container inspect health
# "State": {
#             "Status": "running",
#             "Running": true,
#             "Paused": false,
#             "Restarting": false,
#             "OOMKilled": false,
#             "Dead": false,
#             "Pid": 2181,
#             "ExitCode": 0,
#             "Error": "",
#             "StartedAt": "2026-05-21T04:49:42.984681297Z",
#             "FinishedAt": "0001-01-01T00:00:00Z",
#             "Health": {
#                 "Status": "unhealthy",
#                 "FailingStreak": 16,
#                 "Log": [
#                     {
#                         "Start": "2026-05-21T04:51:10.033244193Z",
#                         "End": "2026-05-21T04:51:10.113607576Z",
#                         "ExitCode": 22,
#                         "Output": "  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current\n                                 Dload  Upload   Total   Spent    Left  Speed\n\r  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0\r  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0\ncurl: (22) The requested URL returned error: 500\n"
#                     },
#                     {
#                         "Start": "2026-05-21T04:51:15.114671822Z",
#                         "End": "2026-05-21T04:51:15.183067023Z",
#                         "ExitCode": 22,
#                         "Output": "  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current\n                                 Dload  Upload   Total   Spent    Left  Speed\n\r  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0\r  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0\ncurl: (22) The requested URL returned error: 500\n"
#                     },
#                     {
#                         "Start": "2026-05-21T04:51:20.183715271Z",
#                         "End": "2026-05-21T04:51:20.253752251Z",
#                         "ExitCode": 22,
#                         "Output": "  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current\n                                 Dload  Upload   Total   Spent    Left  Speed\n\r  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0\r  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0\ncurl: (22) The requested URL returned error: 500\n"
#                     },
#                     {
#                         "Start": "2026-05-21T04:51:25.255269542Z",
#                         "End": "2026-05-21T04:51:25.324926223Z",
#                         "ExitCode": 22,
#                         "Output": "  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current\n                                 Dload  Upload   Total   Spent    Left  Speed\n\r  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0\r  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0\ncurl: (22) The requested URL returned error: 500\n"
#                     },
#                     {
#                         "Start": "2026-05-21T04:51:30.327295633Z",
#                         "End": "2026-05-21T04:51:30.395154327Z",
#                         "ExitCode": 22,
#                         "Output": "  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current\n                                 Dload  Upload   Total   Spent    Left  Speed\n\r  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0\r  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0\ncurl: (22) The requested URL returned error: 500\n"
#                     }
#                 ]
#             }
#         },