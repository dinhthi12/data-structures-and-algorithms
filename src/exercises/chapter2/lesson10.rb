# frozen_string_literal: true

# Returns an array of all odd integers less than 100.
# @return {Array<Integer>} - An array containing all odd integers from 1 to 99.

def solution
  # Method 1: Using an array to collect odd numbers
  arr = []
  (1...100).each do |i|
    arr << i if i.odd?
  end
  arr

  # Method 2: This method is commented out but achieves the same result
  # arr = []
  # (1...100).each do |i|
  #   arr << i if i.odd?
  # end
  # arr
end
