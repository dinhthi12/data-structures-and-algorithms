# Tính T(n) = 1 x 2 x 3…x N

def solution(n)
  result = 1
  for i in 1..n do
    result *= i;
  end
  return result
end
