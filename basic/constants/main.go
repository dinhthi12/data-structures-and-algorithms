package main

func main() {
	/**
	* Cannot be redeclared/reassigned
	* Can only hod scalar values
	* Can hold large high precision numbers
	* Can be created from expressions of other constants
	* Can be untyped (kind)
	* Constants exits only during compilation time
	 */

	//one line untyped
	const identifierInt = 10

	//one line typed
	const identifier string = "Hello World!"

	//multi line (group) mixed
	const (
		//numbers
		number1 int     = 10
		number2 float64 = 22.2

		//strings
		string1 = "Hello"
		string2 = "World"

		char1 byte = 'A'

		complexNum complex128 = 1 + 0i
	)
}
