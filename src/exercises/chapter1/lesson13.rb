# frozen_string_literal: true

# S(n) = x^2 + x^4 + … + x^2n
# @param {Numeric} x - The base value (can be a real number or integer)
# @param {Integer} n - The number of terms in the series (positive integer)
# @return {Numeric} - The sum of the series x^2 + x^4 + … + x^(2n)

def solution(x, n)
  result = 0

  (1..n).each do |i|
    result += x**(2 * i)
  end
  result
end
