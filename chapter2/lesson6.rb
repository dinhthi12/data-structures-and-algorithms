# Tìm số nɡuyên dươnɡ n nhỏ nhất sɑo cho 1 + 2 + … + n > 10000

def solution
  sum = 0
  n = 1

  while sum < 10000
    sum += n
    n += 1
  end
   n - 1
end
