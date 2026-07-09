package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
   port := os.Getenv("APP_PORT")
    mode := os.Getenv("MODE")

    fmt.Println("PORT =", port)
    fmt.Println("MODE =", mode)

    http.HandleFunc("/", HelloServer)
    http.ListenAndServe(":"+port, nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
    mode := os.Getenv("MODE")
    response := "Hello XX" + mode
	fmt.Fprintf(w, response)
}