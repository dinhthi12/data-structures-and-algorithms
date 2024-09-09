# frozen_string_literal: true

# S(n) = ½ + ¼ + … + 1/2n
# @param {Integer} n - The upper limit of the range (positive integer)
# @return {Float} - The sum of the series up to 1/2^n

def solution(n)
  return 0 if n.zero?

  result = 0
  (1..n).each do |i|
    result += 1.0 / (2 * i) # Each element is 1 / 2 * i
  end
  result
end
