# frozen_string_literal: true

# Tính S(n) = 1^2 + 2^2 + … + n^2

def solution(n)
  result = 0
  (1..n).each do |i|
    result += i**2
  end
  result
end
