package main

import (
	"fmt"
	"net/http"

	"github.com/rs/zerolog/log"
)

func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, "Hello, World!")
    })

    err := http.ListenAndServe(":8080", nil)
	if err != nil {
		log.Err(err).Msg("")
	}
}
