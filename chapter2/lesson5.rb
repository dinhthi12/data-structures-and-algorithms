# Tính S(n) = 1^3 + 2^3 + … + N^3

def solution(n)
  result = 0
  for i in 1..n do
    result = result + i**3
  end
  return result
end
