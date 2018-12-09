package main

import (
	"fmt"
	"net/http"
	"log"
)

func sayHelloWorld(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "helloworld")
}

func sayHelloZhanggen(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "helloworld zhanggen!")
}

func main() {
	http.HandleFunc("/", sayHelloWorld)
	http.HandleFunc("/zhanggen", sayHelloZhanggen)
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}
}
