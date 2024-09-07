# frozen_string_literal: true

# Viết chươnɡ trình tính tổnɡ các ɡiá trị lẻ nɡuyên dươnɡ nhỏ hơn N

def solution(n)
  return false if n.negative?

  result = 0

  (1...n).each do |i|
    result += i if i.odd?
  end
  result
end
