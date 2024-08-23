# Tính S(n) = ½ + 2/3 + ¾ + …. + n / n + 1

def solution(n)
  result = 0.0
  for i in 1..n do
    result += i.to_f/(i+1)
  end
   result
end
