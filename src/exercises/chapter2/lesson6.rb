# frozen_string_literal: true

# Finds the smallest positive integer n such that the sum of the first n positive integers
# is greater than 10,000.
# @return {Integer} - The smallest positive integer n that satisfies the condition.

def solution
  sum = 0
  n = 1

  # Iterate until the sum of the first n positive integers exceeds 10,000
  while sum <= 10_000
    sum += n
    n += 1
  end

  # Return the smallest n where the sum exceeds 10,000
  n - 1
end
