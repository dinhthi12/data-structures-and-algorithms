# frozen_string_literal: true

# Tính T(n) = 1 x 2 x 3…x N

def solution(n)
  result = 1
  (1..n).each do |i|
    result *= i
  end
  result
end
