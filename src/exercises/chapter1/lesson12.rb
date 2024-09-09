# frozen_string_literal: true

# S(n) = x + x^2 + x^3 + … + x^n
# @param {Numeric} x - The base value (can be a real number or integer)
# @param {Integer} n - The exponent limit (non-negative integer)
# @return {Numeric} - The sum of the series x^1 + x^2 + x^3 + … + x^n

def solution(x, n)
  result = 0

  (0..n).each do |i|
    result += x**i
  end
  result
end
