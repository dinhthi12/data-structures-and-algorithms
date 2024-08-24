# frozen_string_literal: true

# Tính S(n) = 1 + 2 + 3 + … + n

def solution(n)
  sum = 0
  (1..n).each do |i|
    sum += i
  end
  sum
end
