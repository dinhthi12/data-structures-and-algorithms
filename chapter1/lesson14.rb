# Tính S(n) = x + x^3 + x^5 + … + x^2n + 1

def solution(x, n)
  result = 0
  (0..n).each do |i|
    result += x**(2*i + 1)
  end
  result
end
