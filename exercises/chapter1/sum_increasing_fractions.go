package chapter1

// Calculate S(n) = ½ + 2/3 + ¾ + …. + n / n + 1

func SumIncreasingFractions(n int) float64 {
	var sum float64 = 0

	if n <= 0 {
		return 0
	}

	for i := 1; i <= n; i++ {
		sum += float64(i) / float64(i+1)
	}

	return sum
}
