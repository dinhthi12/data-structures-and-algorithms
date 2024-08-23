#Tính S(n) = x + x^2 + x^3 + … + x^n

def solution(x, n)
  result = 0

  (0..n).each do |i|
    result += x**i
  end
  result
end
