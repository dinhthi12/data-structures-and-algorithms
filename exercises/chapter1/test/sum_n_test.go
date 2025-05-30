package chapter1_test

import (
	"exercises/chapter1"
	"testing"
)

func TestSumN(t *testing.T) {
	tests := []struct {
		input    int
		expected int
	}{
		{5, 15}, // 1+2+3+4+5 = 15
		{10, 55},
		{0, 0},
		{-5, 0}, // edge case
		{1, 1},
	}

	for _, test := range tests {
		got := chapter1.SumN(test.input)
		if got != test.expected {
			t.Errorf("Sum N(%d) = %d; want %d", test.input, got, test.expected)
		}
	}
}
