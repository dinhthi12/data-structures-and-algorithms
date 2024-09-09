# frozen_string_literal: true

# S(n) = 1 + 1/3 + 1/5 + … + 1/(2n + 1)
# @param {Integer} n - The upper limit of the range (positive integer)
# @return {Float} - The sum of the series up to 1/(2n + 1)

def solution(n)
  result = 0.0
  (1..n).each do |i|
    result += 1.0 / (2 * i + 1) # Each element is 1 / (2i + 1)
  end
  result
end
