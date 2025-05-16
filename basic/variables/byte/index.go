package main

import (
	"fmt"
)

const (
	b1 byte = 1
	b2 byte = 255 // if greater than 255: const will overflow byte
)

var (
	b3 int32 = '繙'
	b4 uint8 = 'A'
)

func main() {
	fmt.Printf("%T\n", b3)
	fmt.Println("uint value", b3, "string value", string(b3))
	// automatic conversion to 'uint8'
	fmt.Printf("value of: A + B = %[1]v | type: %[1]T\n", 'A'+b4)
	// no conversion is done, falling back to 'int32' aka 'rune'
	fmt.Printf("value of: A + B = %[1]v | type: %[1]T\n", 'A'+b3)
}
