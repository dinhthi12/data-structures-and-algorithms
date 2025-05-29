package chapter1_test

import (
	"exercises/chapter1"
	"math"
	"testing"
)

func TestSumHarmonic(t *testing.T) {
	tests := []struct {
		n        int
		expected float64
	}{
		{1, 1.0},
		{2, 1.5},
		{3, 1.833333},
		{5, 2.283333},
		{0, 0},
		{-1, 0},
	}

	for _, tt := range tests {
		result := chapter1.SumHarmonic(tt.n)
		if math.Abs(result-tt.expected) > 1e-5 {
			t.Errorf("SumHarmonic(%d) = %f; want %f", tt.n, result, tt.expected)
		}
	}
}
