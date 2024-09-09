# frozen_string_literal: true

# T(n) = 1 x 2 x 3…x N
# @param {Integer} n - The upper limit of the range (positive integer)
# @return {Integer} - Factorial of n
#
def solution(n)
  result = 1
  (1..n).each do |i|
    result *= i
  end
  result
end
