package main

import "fmt"

//go:noinline
func printHello() {
	fmt.Println("Hello, World!")
}

func main() {
	printHello()
}
