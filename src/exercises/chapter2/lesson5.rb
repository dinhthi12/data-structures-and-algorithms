# frozen_string_literal: true

# Calculates the sum of cubes from 1^3 to N^3.
# @param {Integer} n - The upper limit of the range.
# @return {Integer} - The sum of cubes of all integers from 1 to n.

def solution(n)
  result = 0
  (1..n).each do |i|
    result += i**3
  end
  result
end
