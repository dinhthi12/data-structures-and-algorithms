# frozen_string_literal: true

# S(n) = 1^2 + 2^2 + … + n^2
# @param {Integer} n - The upper limit of the range
# @return {Integer} - The sum of squares of all integers from 1 to n

def solution(n)
  return 0 if n.zero?

  (1..n).sum { |i| i**2 }
end
