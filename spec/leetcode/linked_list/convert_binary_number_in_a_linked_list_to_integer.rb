# frozen_string_literal: true

require_relative '../../../src/leetcode/linked_list/convert_binary_number_in_a_linked_list_to_integer'

# RSpec test suite to test the functionality of the convert_binary_number method.
RSpec.describe 'convert_binary_number' do
  # Describe the context of testing the conversion of a binary number in a linked list to an integer.
  describe 'convert binary number in a linked list' do
    # Test case 1: Convert the binary linked list [1, 0, 1] to a decimal value.
    # This corresponds to the binary number 101, which is equal to 5 in decimal.
    it 'returns the correct decimal value for a binary linked list [1, 0, 1]' do
      # Create a linked list: 1 -> 0 -> 1
      node3 = ListNode.new(1) # Last node with value 1
      node2 = ListNode.new(0, node3)  # Second node with value 0, pointing to node3
      head = ListNode.new(1, node2)   # First node with value 1, pointing to node2

      # Check that the decimal value returned by get_decimal_value for the linked list is 5
      expect(get_decimal_value(head)).to eq(5)
    end

    # Test case 2: Convert the binary linked list [0] to a decimal value.
    # This corresponds to the binary number 0, which is equal to 0 in decimal.
    it 'returns the correct decimal value for a binary linked list of [0]' do
      # Create a single-node linked list: 0
      head = ListNode.new(0)

      # Check that the decimal value returned by get_decimal_value for the linked list is 0
      expect(get_decimal_value(head)).to eq(0)
    end

    # Test case 3: Convert the binary linked list [1] to a decimal value.
    # This corresponds to the binary number 1, which is equal to 1 in decimal.
    it 'returns the correct decimal value for a binary linked list of [1]' do
      # Create a single-node linked list: 1
      head = ListNode.new(1)

      # Check that the decimal value returned by get_decimal_value for the linked list is 1
      expect(get_decimal_value(head)).to eq(1)
    end
  end
end
