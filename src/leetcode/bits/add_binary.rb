# https://leetcode.com/problems/add-binary/

# frozen_string_literal: true

# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  # Initialize an empty string to store the result of the binary addition
  result = String.new
  # Initialize a carry value, which will be used to keep track of overflows in binary addition
  carry = 0
  # Set the indices to point to the last characters of both input strings (starting from the rightmost bit)
  i = a.length - 1
  j = b.length - 1

  # Continue the loop as long as there are still bits to process in either string, or if there's a carry
  while i >= 0 || j >= 0 || carry > 0
    # Start by adding the carry from the previous operation (if any)
    sum = carry
    # If there are still bits left in string `a`, add the bit to the sum, then decrement index `i`
    sum += a[i].to_i if i >= 0
    # If there are still bits left in string `b`, add the bit to the sum, then decrement index `j`
    sum += b[j].to_i if j >= 0

    # Append the least significant bit (sum % 2) to the result (0 or 1)
    result << (sum % 2).to_s
    # Calculate the carry (sum / 2), which will be used in the next iteration
    carry = sum / 2

    # Move to the next bit on the left in both `a` and `b`
    i -= 1
    j -= 1
  end

  # Reverse the result since binary addition starts from the least significant bit, and we've been appending bits in reverse order.
  result.reverse
end