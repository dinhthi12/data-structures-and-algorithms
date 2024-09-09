# frozen_string_literal: true

# Determines which quarter of the year a given month belongs to.
# @param {Integer} month - The month of the year (1 for January, 2 for February, ..., 12 for December).
# @return {Integer} - The quarter number (1, 2, 3, or 4) that the month belongs to.

def solution(month)
  case month
  when 1, 2, 3
    1  # January, February, and March belong to the 1st quarter.
  when 4, 5, 6
    2  # April, May, and June belong to the 2nd quarter.
  when 7, 8, 9
    3  # July, August, and September belong to the 3rd quarter.
  when 10, 11, 12
    4  # October, November, and December belong to the 4th quarter.
  else
    'Invalid month'  # Handle cases where the month is not between 1 and 12.
  end
end
