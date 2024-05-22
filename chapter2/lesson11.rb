# Tìm ước số chung lớn nhất của 2 số nguyên dương

def solution(a, b)
 while b != 0
  a, b = b, a % b
 end
 a
end
