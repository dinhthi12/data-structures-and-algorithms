# frozen_string_literal: true

# Checks if two real numbers have the same sign.
# @param {Float} a - The first real number.
# @param {Float} b - The second real number.
# @return {Boolean} - Returns true if both numbers have the same sign or if either is zero; otherwise, returns false.

def solution(a, b)
  a * b >= 0
end
