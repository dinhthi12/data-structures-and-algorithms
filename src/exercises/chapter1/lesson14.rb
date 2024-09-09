# frozen_string_literal: true

# S(n) = x + x^3 + x^5 + … + x^2n + 1
# @param {Numeric} x - The base value (can be a real number or integer)
# @param {Integer} n - The number of terms in the series (positive integer)
# @return {Numeric} - The sum of the series x + x^3 + x^5 + … + x^(2n + 1)

def solution(x, n)
  result = 0
  (0..n).each do |i|
    result += x**(2 * i + 1)
  end
  result
end
