# Tính S(n) = 1 + 2 + 3 + … + n

def solution(n)
  sum = 0
  for i in 1..n do
    sum = sum + i
  end
   sum
end
