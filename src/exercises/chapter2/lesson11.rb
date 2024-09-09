# frozen_string_literal: true

# Finds the greatest common divisor (GCD) of two positive integers using the Euclidean algorithm.
# @param {Integer} a - The first positive integer.
# @param {Integer} b - The second positive integer.
# @return {Integer} - The greatest common divisor of the two integers.

def solution(a, b)
  a, b = b, a % b while b != 0
  a
end
