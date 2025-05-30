package chapter1_test

import (
	"exercises/chapter1"
	"math"
	"testing"
)

func TestSumIncreasingFractions(t *testing.T) {
	tests := []struct {
		n        int
		expected float64
	}{
		{0, 0.0},                   // edge case
		{1, 1.0 / 2},               // 0.5
		{2, 1.0/2 + 2.0/3},         // ≈ 1.1666
		{3, 1.0/2 + 2.0/3 + 3.0/4}, // ≈ 1.9166
		{5, 1.0/2 + 2.0/3 + 3.0/4 + 4.0/5 + 5.0/6}, // ≈ 3.55
	}

	for _, test := range tests {
		result := chapter1.SumIncreasingFractions(test.n)
		if math.Abs(result-test.expected) > 1e-6 {
			t.Errorf("Sum Increasing Fractions(%d) = %f; expected %f", test.n, result, test.expected)
		}
	}
}
