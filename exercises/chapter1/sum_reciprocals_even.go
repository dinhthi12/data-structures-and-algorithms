package chapter1

// Calculate S(n) = ½ + ¼ + … + 1/2n

func SumReciprocalsEven(n int) float64 {
	var sum float64 = 0

	if n <= 0 {
		return 0
	}

	for i := 1; i <= n; i++ {
		sum += 1.0 / float64(2*i)
	}

	return sum
}
