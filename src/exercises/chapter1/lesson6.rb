# frozen_string_literal: true

# S(n) = 1/1×2 + 1/2×3 +…+ 1/n x (n + 1)
# @param {Integer} n - The upper limit of the range (positive integer)
# @return {Float} - The sum of the series up to 1/n×(n + 1)

def solution(n)
  result = 0
  (1..n).each do |i|
    result += 1.0 / (i * (i + 1)) # Each element is 1 / (i * (i + 1))
  end
  result
end
