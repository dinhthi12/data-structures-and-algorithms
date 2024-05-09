# Viết chươnɡ trình tìm số nɡuyên dươnɡ m lớn nhất sɑo cho 1 + 2 + … + m < N
# require 'byebug'

def solution(n)
  return nil if n <= 0

  sum = 0
  m = 0
  # byebug
  while sum < n
    m += 1
    sum += m
  end

  return m
end
