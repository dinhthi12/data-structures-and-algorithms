# frozen_string_literal: true

# Tính S(n) = 1 + ½ + 1/3 + … + 1/n

def solution(n)
  return 0 if n.zero?

  result = 0
  (1..n).each do |i|
    result += 1 / i.to_f
  end
  result
end
