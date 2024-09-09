# frozen_string_literal: true

# S(n) = ½ + ¾ + 5/6 + … + 2n + 1/ 2n + 2
# @param {Integer} n - The upper limit of the range (positive integer)
# @return {Float} - The sum of the series up to (2n + 1) / (2n + 2)

def solution(n)
  result = 0.0
  (1..n).each do |i|
    result += (2 * i + 1).to_f / (2 * i + 2) # Calculate each element of the sequence
  end
  result
end
