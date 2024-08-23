# Tính S(n) = ½ + ¼ + … + 1/2n

def solution(n)
  return 0 if n == 0
  result = 0
  for i in 1..n do
    result = result + 1.0/ (2**i)
  end
   result
end
