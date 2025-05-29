package utils

import "math"

// AlmostEqual returns true if two float64 values are equal within a given tolerance.
func AlmostEqual(a, b, tolerance float64) bool {
	return math.Abs(a-b) <= tolerance
}
