# frozen_string_literal: true

# Prints all uppercase letters from A to Z.
# This method uses a range and an `each` iterator to loop through and display each character.

def solution
  # Iterate through the range from 'A' to 'Z'
  ('A'..'Z').each do |char|
    # Print each character in the range
    puts char
  end
end
