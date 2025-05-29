package chapter1_test

import (
	"exercises/chapter1"
	"exercises/utils"
	"testing"
)

func TestSumReciprocalsEven(t *testing.T) {
	tests := []struct {
		name     string
		n        int
		expected float64
	}{
		{"n = 1", 1, 1.0 / 2},
		{"n = 2", 2, 1.0/2 + 1.0/4},
		{"n = 3", 3, 1.0/2 + 1.0/4 + 1.0/6},
		{"n = 0", 0, 0},
		{"n = -5", -5, 0},
	}

	const epsilon = 1e-9

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := chapter1.SumReciprocalsEven(tt.n)
			if !utils.AlmostEqual(result, tt.expected, epsilon) {
				t.Errorf("Expected %v, got %v", tt.expected, result)
			}
		})
	}
}
