# Tính S(n) = ½ + ¾ + 5/6 + … + 2n + 1/ 2n + 2

def solution(n)
  result = 0.0
  for i in 1..n do
    result += (2*i +1).to_f/(2 * i + 2)
  end
   result
end
