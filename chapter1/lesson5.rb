# frozen_string_literal: true

# Tính S(n) = 1 + 1/3 + 1/5 + … + 1/(2n + 1)

def solution(n)
  result = 0.0
  (1..n).each do |i|
    result += 1.0 / (2 * i + 1)
  end
  result
end
