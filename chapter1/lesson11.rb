# Tính S(n) = 1 + 1.2 + 1.2.3 + … + 1.2.3….N

def calculate_factorial(n)
  return 1 if n == 0
  (1..n).reduce(:*)
end

def solution(n)
  sum = 0
  factorial = 1

  (1..n).each do |i|
    factorial *= i
    sum += factorial
  end

  sum
end
