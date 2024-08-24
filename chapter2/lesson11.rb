# frozen_string_literal: true

# Tìm ước số chung lớn nhất của 2 số nguyên dương

def solution(a, b)
  a, b = b, a % b while b != 0
  a
end
