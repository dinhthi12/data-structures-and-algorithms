# frozen_string_literal: true

# Tính S(n) = ½ + ¼ + … + 1/2n

def solution(n)
  return 0 if n.zero?

  result = 0
  (1..n).each do |i|
    result += 1.0 / (2**i)
  end
  result
end
