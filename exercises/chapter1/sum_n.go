package chapter1

// Calculate S(n) = 1 + 2 + 3 + … + n

func SumN(n int) int {
	var sum int = 0
	if n <= 0 {
		return 0
	}
	for i := 1; i <= n; i++ {
		sum += i
	}
	return sum
}
