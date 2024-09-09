# frozen_string_literal: true

# Solves and provides a reason for the solution of a linear equation of the form ax + b = 0.
# @param {Float} a - The coefficient of x in the equation.
# @param {Float} b - The constant term in the equation.
# @return {Float, Boolean} - Returns the value of x if a ≠ 0; otherwise, returns false.

def solution(a, b)
  # Check if the coefficient 'a' is zero.
  # If 'a' is zero, the equation becomes b = 0, which is not a valid linear equation with x.
  return false if a.zero?

  # Calculate the value of x. Since 'a' is non-zero, we can safely compute -b / a.
  x = -b / a
  x
end
