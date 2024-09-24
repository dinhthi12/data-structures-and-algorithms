# https://leetcode.com/problems/number-of-1-bits/

# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def hamming_weight(n)
  # Initialize a variable to keep track of the number '1' bits
  count = 0

  # Loop until all bits in n have been checked
  while n != 0
    # Check if the least significant bit (LSB) of n is '1'
    # If n & 1 equals 1, it means the LSB is '1', so increment count
    count += 1 if n & 1 == 1

    # Right shift n by 1 bit to check the next bit in the next iteration
    n >>= 1
  end

  # Return the total count of '1' bits
  count
end
