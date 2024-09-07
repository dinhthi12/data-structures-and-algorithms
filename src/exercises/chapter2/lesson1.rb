# frozen_string_literal: true

# Viết chươnɡ trình tìm số lớn nhất tronɡ 3 số thực ɑ, b, c

def solution(a, b, c)
  max = a
  max = b if b > max
  max = c if c > max
  max
end
