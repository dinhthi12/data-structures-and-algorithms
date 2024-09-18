# https://leetcode.com/problems/reverse-bits/

# frozen_string_literal: true

# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  # Initialize the result to 0, this will store the reversed bits
  result = 0

  # Define the number of bits to process, which is 32 for a 32-bit integer
  bits_number = 32

  # Iterate over each of the 32 bits
  bits_number.times do
    # Extract the least significant bit (rightmost bit) of n using bitwise AND with 1
    bit = n & 1

    # Left shift the result by 1 to make space for the new bit
    # Then use bitwise OR to add the extracted bit to the result
    result = (result << 1) | bit

    # Right shift n by 1 to move to the next bit (discard the current least significant bit)
    n >>= 1
  end

  # Return the result, which now contains the reversed bits of n
  result
end
