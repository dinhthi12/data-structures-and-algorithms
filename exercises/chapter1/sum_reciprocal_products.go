package chapter1

// Calculate S(n) = 1/1×2 + 1/2×3 +…+ 1/n x (n + 1)

func SumReciprocalProducts(n int) float64 {
	var sum float64 = 0

	if n <= 0 {
		return 0
	}

	for i := 1; i <= n; i++ {
		denominator := float64(i * (i + 1))
		sum += 1.0 / denominator
	}

	return sum
}
