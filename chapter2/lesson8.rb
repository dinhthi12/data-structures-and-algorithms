# Viết chươnɡ trình tính tổnɡ các ɡiá trị lẻ nɡuyên dươnɡ nhỏ hơn N

def solution(n)
  return false if n < 0

  result = 0

  for i in 1 ... n
    if i % 2 != 0
      result += i
    end
  end
   result
end
