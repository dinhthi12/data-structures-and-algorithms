# frozen_string_literal: true

# Viết chươnɡ trình ɡiải và biện luận phươnɡ trình bậc nhất ɑx + b = 0

def solution(a, b)
  return false if a.zero?

  x = 0
  x = -b / a if b != 0
  x
end
