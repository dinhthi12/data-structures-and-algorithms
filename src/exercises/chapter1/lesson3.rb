# frozen_string_literal: true

# S(n) = 1 + ½ + 1/3 + … + 1/n
# @param {Integer} n - The upper limit of the range
# @return {Float} - The sum of the harmonic series up to n

def solution(n)
  return 0 if  n <= 0

  (1..n).sum { |i| 1.0 / i }
end
