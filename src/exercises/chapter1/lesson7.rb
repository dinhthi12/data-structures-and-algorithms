# frozen_string_literal: true

# S(n) = ½ + 2/3 + ¾ + …. + n / n + 1
# @param {Integer} n - The upper limit of the range (positive integer)
# @return {Float} - The sum of the series up to n / (n + 1)

def solution(n)
  result = 0.0
  (1..n).each do |i|
    result += i.to_f / (i + 1) # Calculate each element of the array and add it to the result
  end
  result
end
