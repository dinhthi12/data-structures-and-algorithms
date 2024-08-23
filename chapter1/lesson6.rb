# Tính S(n) = 1/1×2 + 1/2×3 +…+ 1/n x (n + 1)

def solution(n)
  result = 0
  for i in 1..n do
    result += 1.0 / (i * (i + 1))
  end
   result
end
