package chapter1

//Lesson 2: Calculate S(n) = 1^2 + 2^2 + … + n^2

func SumSquares(n int) int {
	var sum int = 0
	if n <= 0 {
		return 0
	}

	for i := 1; i <= n; i++ {
		sum += i * i
	}
	return sum
}
