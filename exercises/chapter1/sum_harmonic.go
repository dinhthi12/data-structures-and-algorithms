package chapter1

// Calculate S(n) = 1 + ½ + 1/3 + … + 1/n

func SumHarmonic(n int) float64 {
	var sum float64 = 0
	if n <= 0 {
		return 0
	}

	for i := 1; i <= n; i++ {
		sum += 1.0 / float64(i)
	}

	return sum
}
