# frozen_string_literal: true

# Tính S(n) = 1^3 + 2^3 + … + N^3

def solution(n)
  result = 0
  (1..n).each do |i|
    result += i**3
  end
  result
end
