# frozen_string_literal: true

# S(n) = 1/(1) + 1/(1 + 2) + 1/(1 + 2 + 3) + ... + 1/(1 + 2 + 3 + ... + N)
# @param {Integer} n - The upper limit of the range
# @return {Float} - The sum of the series where each term is the reciprocal of the sum of the first i natural numbers

def solution(n)
  sum = 0.0

  (1..n).each do |i|
    total = (i * (i + 1)) / 2.0  # Calculate the sum of the first i natural numbers
    sum += 1.0 / total  # Add the reciprocal of the sum to the total
  end
  sum
end
