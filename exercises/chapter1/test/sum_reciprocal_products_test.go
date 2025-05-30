package chapter1_test

import (
	"exercises/chapter1"
	"math"
	"testing"
)

func TestSumReciprocalProducts(t *testing.T) {
	tests := []struct {
		n        int
		expected float64
	}{
		{0, 0.0},                                      // edge case
		{1, 1.0 / (1 * 2)},                            // 1/2 = 0.5
		{2, 1.0/(1*2) + 1.0/(2*3)},                    // 1/2 + 1/6 = 0.5 + 0.166...
		{3, 1.0/(1*2) + 1.0/(2*3) + 1.0/(3*4)},        // 1/2 + 1/6 + 1/12
		{5, 1.0/2 + 1.0/6 + 1.0/12 + 1.0/20 + 1.0/30}, // manual sum
	}

	for _, test := range tests {
		result := chapter1.SumReciprocalProducts(test.n)
		if math.Abs(result-test.expected) > 1e-6 {
			t.Errorf("Sum Reciprocal Products(%d) = %f; expected %f", test.n, result, test.expected)
		}
	}
}
