# Tính S(n) = 1 + 1/3 + 1/5 + … + 1/(2n + 1)

def solution(n)
  result = 0.0
  for i in 1..n do
    result = result + 1.0/(2*i +1)
  end
  return result
end
