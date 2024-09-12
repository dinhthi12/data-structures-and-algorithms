# https://leetcode.com/problems/minimum-bit-flips-to-convert-number/

# frozen_string_literal: true

# # @param {Integer} start
# # @param {Integer} goal
# # @return {Integer}
def min_bit_flips(start, goal)
    # This computes the XOR of the two numbers. Wherever the bits differ, the XOR result will have a 1.
    xor_result = start ^ goal

    count = 0
    # The while loop continues until xor_result becomes 0, shifting through the bits from right to left.
    while xor_result > 0
        # xor_result & 1 checks whether the rightmost bit of xor_result is 1. If so, we increment the count.
        count += 1 if (xor_result & 1) == 1
        # xor_result >>= 1 shifts xor_result to the right by 1 bit, preparing for the next iteration.
        xor_result >>= 1
    end
    count
end
