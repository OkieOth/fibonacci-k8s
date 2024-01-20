package main

import (
	"fmt"
	"github.com/gorilla/mux"
	"log"
	"net/http"
	"strconv"
)

// FibonacciHandler is a handler for the Fibonacci endpoint.
func FibonacciHandler(w http.ResponseWriter, r *http.Request) {
	// Extract the 'number' path parameter
	vars := mux.Vars(r)
	numberStr := vars["number"]

	// Convert the 'number' parameter to an integer
	number, err := strconv.Atoi(numberStr)
	if err != nil {
		http.Error(w, "Invalid number", http.StatusBadRequest)
		return
	}

	// Calculate Fibonacci numbers up to the specified number
	result := calculateFibonacci(number)

	// Convert the result to JSON and send the response
	w.Header().Set("Content-Type", "application/json")
	fmt.Fprint(w, result)
}

func calculateFibonacci(n int) []int {
	result := []int{}
	a, b := 0, 1
	for i := 0; i < n; i++ {
		result = append(result, a)
		a, b = b, a+b
	}
	return result
}

// @title REST Interface to get list of fibonacci numbers
// @version 0.1.0
// @description This is a simple Golang web service with OpenAPI documentation.
// @host testserver1.com
// @BasePath /
func main() {
	// Create a new router
	r := mux.NewRouter()

	// Define routes
	r.HandleFunc("/fibonacci/{number}", FibonacciHandler).Methods("GET")

	// Swagger documentation route
	r.PathPrefix("/docs/").Handler(http.StripPrefix("/docs/", http.FileServer(http.Dir("docs"))))

	// Start the server
	log.Println("Server listening on :8080...")
	log.Fatal(http.ListenAndServe(":8080", r))
}
