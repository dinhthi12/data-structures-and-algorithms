# frozen_string_literal: true

# S(n) = 1 + 1/(1) + 2 + 1/(1 + 2) + 3 + 1/(1 + 2 + 3) + … + N + 1/(1 + 2 + 3 + … + N)
# @param {Integer} n - The upper limit of the range
# @return {Float} - The sum of the series where each term includes an integer and its corresponding fractional part

def solution(n)
  result = 0
  denominator = 0

  (1..n).each do |i|
    result += i
    denominator += i
    result += 1.0 / denominator
  end
  result
end
