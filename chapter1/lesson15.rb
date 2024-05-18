# Tính S(n) = 1 + 1/1 + 2 + 1/ 1 + 2 + 3 + ….. + 1/ 1 + 2 + 3 + …. + N

def solution(n)
  result = 0
  denominator = 0

  (1..n).each do |i|
    result += i
    denominator += i
    result += 1.0/ denominator
  end
  result
end
