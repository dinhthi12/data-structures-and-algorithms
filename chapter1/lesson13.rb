# Tính S(n) = x^2 + x^4 + … + x^2n

def solution(x, n)
  result = 0

  (1..n).each do |i|
    result += x**(2*i)
  end

  result
end
