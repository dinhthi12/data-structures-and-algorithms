# frozen_string_literal: true

# Tính S(n) = ½ + 2/3 + ¾ + …. + n / n + 1

def solution(n)
  result = 0.0
  (1..n).each do |i|
    result += i.to_f / (i + 1)
  end
  result
end
