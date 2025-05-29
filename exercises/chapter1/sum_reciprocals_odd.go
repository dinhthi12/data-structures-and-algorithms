package chapter1

// Calculate S(n) = 1 + 1/3 + 1/5 + … + 1/(2n + 1)

func SumReciprocalsOdd(n int) float64 {
	var sum float64 = 0

	if n < 0 {
		return 0
	}

	for i := 0; i <= n; i++ {
		sum += 1.0 / float64(2*i+1)
	}

	return sum
}
