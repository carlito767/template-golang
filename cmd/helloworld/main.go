package main

import (
	"fmt"

	"github.com/carlito767/go-stack/clp"
)

func main() {
	o := struct{ Name string }{"World"}
	if err := clp.ParseOptions(&o); err != nil {
		fmt.Printf("Error: %v\n", err)
		return
	}

	fmt.Printf("Hello, %v!\n", o.Name)
}
