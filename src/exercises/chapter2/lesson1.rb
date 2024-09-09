# frozen_string_literal: true

# Finds the maximum value among three real numbers a, b, and c.
# @param {Float} a - The first real number.
# @param {Float} b - The second real number.
# @param {Float} c - The third real number.
# @return {Float} - The largest of the three numbers.

def solution(a, b, c)
  max = a
  max = b if b > max
  max = c if c > max
  max
end
