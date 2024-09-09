# frozen_string_literal: true

# S(n) = 1 + 2 + 3 + … + n
# @param {Integer} n - The upper limit of the range
# @return {Integer} - the sum of all integers from 1 to n

def solution(n)
  sum = 0
  (1..n).each do |i|
    sum += i
  end
  sum
end
