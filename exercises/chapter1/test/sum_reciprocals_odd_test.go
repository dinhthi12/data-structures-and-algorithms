package chapter1_test

import (
	"exercises/chapter1"
	"exercises/utils"
	"testing"
)

func TestSumReciprocalsOdd(t *testing.T) {
	tests := []struct {
		n        int
		expected float64
	}{
		{0, 1.0},                     // 1/1
		{1, 1.0 + 1.0/3.0},           // 1 + 1/3
		{2, 1.0 + 1.0/3.0 + 1.0/5.0}, // 1 + 1/3 + 1/5
		{3, 1.0 + 1.0/3.0 + 1.0/5.0 + 1.0/7.0},
		{-1, 0}, // Negative input
	}

	const tolerance = 1e-6

	for _, tc := range tests {
		result := chapter1.SumReciprocalsOdd(tc.n)
		if !utils.AlmostEqual(result, tc.expected, tolerance) {
			t.Errorf("Sum Reciprocals Odd(%d) = %.6f; want %.6f", tc.n, result, tc.expected)
		}
	}
}
