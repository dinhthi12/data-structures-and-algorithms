# frozen_string_literal: true

# Tính S(n) = ½ + ¾ + 5/6 + … + 2n + 1/ 2n + 2

def solution(n)
  result = 0.0
  (1..n).each do |i|
    result += (2 * i + 1).to_f / (2 * i + 2)
  end
  result
end
