# frozen_string_literal: true

# Tính S(n) = 1/1×2 + 1/2×3 +…+ 1/n x (n + 1)

def solution(n)
  result = 0
  (1..n).each do |i|
    result += 1.0 / (i * (i + 1))
  end
  result
end
