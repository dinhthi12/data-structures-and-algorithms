# Tính S(n) = 1 + ½ + 1/3 + … + 1/n

def solution(n)
  return 0 if n == 0
  result = 0
  for i in 1..n do
    result = result + 1/i.to_f
  end
   result
end
