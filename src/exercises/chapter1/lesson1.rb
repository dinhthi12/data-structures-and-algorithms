# frozen_string_literal: true

# S(n) = 1 + 2 + 3 + … + n
# @param {Integer} n - The upper limit of the range
# @return {Integer} - the sum of all integers from 1 to n

def solution(n)
  return 0 if n.zero?

  (1..n).sum
end
