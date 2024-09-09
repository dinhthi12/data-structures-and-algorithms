# frozen_string_literal: true

# S(n) = 1 + ½ + 1/3 + … + 1/n
# @param {Integer} n - The upper limit of the range
# @return {Float} - The sum of the harmonic series up to n

def solution(n)
  return 0 if n.zero?

  result = 0
  (1..n).each do |i|
    result += 1 / i.to_f
  end
  result
end
