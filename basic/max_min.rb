=begin
*Find the largest number among 3 numbers
=end

def solution(a, b, c)
  max = [a, b, c].max
  min = [a, b, c].min
  [max, min]
end
