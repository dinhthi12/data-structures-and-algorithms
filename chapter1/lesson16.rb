# Tính S(n) = 1 + 1/1 + 2 + 1/ 1 + 2 + 3 + ….. + 1/ 1 + 2 + 3 + …. + N

def solution(n)
  sum = 0.0

  (1..n).each do |i|
    total = (i * (i + 1)) / 2.0
    sum += 1.0 / total
  end
  sum
end
