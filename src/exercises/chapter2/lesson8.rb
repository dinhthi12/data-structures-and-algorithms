# frozen_string_literal: true

# Calculates the sum of all odd integers less than a given number n.
# @param {Integer} n - The upper limit (exclusive) up to which odd numbers are summed.
# @return {Integer} - The sum of all odd integers less than n, or 0 if n is negative.

def solution(n)
  # Return 0 if the input is a negative number
  return 0 if n.negative?

  result = 0

  # Iterate from 1 up to, but not including, n
  (1...n).each do |i|
    # Add the number to result if it is odd
    result += i if i.odd?
  end

  # Return the calculated sum
  result
end
