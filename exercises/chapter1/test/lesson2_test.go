package chapter1_test

import (
	"exercises/chapter1"
	"testing"
)

func TestSumSquares(t *testing.T) {
	tests := []struct {
		input    int
		expected int
	}{{1, 1},
		{2, 5},
		{3, 14},
		{5, 55},
		{0, 0}, // edge case
		{-3, 0},
	}

	for _, test := range tests {
		got := chapter1.SumSquares(test.input)
		if got != test.expected {
			t.Errorf("SumSquares(%d) = %d; want %d", test.input, got, test.expected)
		}
	}
}
