# https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer

# frozen_string_literal: true

# Definition for singly-linked list node.
# Each node has a value (val) and a pointer to the next node (_next).
class ListNode
  attr_accessor :val, :next

  # Initialize the node with a value and an optional reference to the next node
  def initialize(val = 0, _next = nil)
    @val = val # Node value (0 or 1, since the list represents a binary number)
    @next = _next # Pointer to the next node in the linked list (or nil if it's the last node)
  end
end

# Function to convert a binary number stored in a linked list to an integer
# @param {Listnote} head - Head of the linked list
# return {Integer} - Decimal (base-10) representation of the binary number
def get_decimal_value(head)
  num = 0 # Initialize the number store the decimal value

  # Traverse the linked list until the end (while head is not nil)
  while head
    # Shift the current number left by 1 bit (multiply by 2), then add the current node's value
    # this simulates reading the binary number from left to right
    num = num * 2 + head.val
    # Move to the next node in the linked list
    head = head.next
  end

  # Return the final computed decimal number
  num
end
