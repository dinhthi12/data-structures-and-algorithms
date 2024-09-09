# frozen_string_literal: true

# S(n) = 1 + 1.2 + 1.2.3 + … + 1.2.3….N
# @param {Integer} n - The upper limit of the range (positive integer)
# @return {Integer} - The sum of factorials from 1! to n!

def calculate_factorial(n)
  return 1 if n.zero?
  (1..n).reduce(:*)
end

def solution(n)
  sum = 0
  factorial = 1

  (1..n).each do |i|
    factorial *= i
    sum += factorial
  end
  sum
end
