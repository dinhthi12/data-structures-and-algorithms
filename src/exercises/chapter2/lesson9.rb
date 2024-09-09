# frozen_string_literal: true

# Finds the largest integer m such that the sum of integers from 1 to m is less than a given number n.
# @param {Integer} n - The upper limit for the sum.
# @return {Integer, nil} - The largest integer m for which the sum of 1 + 2 + ... + m < n, or nil if n is less than or equal to 0.

def solution(n)
  # Return nil if the input is less than or equal to 0
  return nil if n <= 0

  sum = 0
  m = 0

  # Increment m and add it to sum while the sum is less than n
  while sum < n
    m += 1
    sum += m
  end

  # Return the largest integer m where the sum of 1 to m is less than n
  m - 1
end
