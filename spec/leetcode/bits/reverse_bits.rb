# frozen_string_literal: true

require_relative '../../../src/leetcode/bits/reverse_bits'

RSpec.describe 'reverse_bits' do
  describe 'reverse_bits' do
    it 'reverses the bits of 0b00000010100101000001111010011100' do
      # Input: 0b00000010100101000001111010011100 (binary) = 43261596 (decimal)
      # Expected output: 964176192 (binary: 0b00111001011110000010100101000000)
      expect(reverse_bits(0b00000010100101000001111010011100)).to eq(964_176_192)
    end

    it 'reverses the bits of 0b11111111111111111111111111111101' do
      # Input: 0b11111111111111111111111111111101 (binary) = 4294967293 (decimal)
      # Expected output: 3221225471 (binary: 0b10111111111111111111111111111111)
      expect(reverse_bits(0b11111111111111111111111111111101)).to eq(3_221_225_471)
    end

    it 'reverses the bits of 0b00000000000000000000000000000000' do
      # Input: 0b00000000000000000000000000000000 (binary) = 0 (decimal)
      # Expected output: 0 (binary: 0b00000000000000000000000000000000)
      expect(reverse_bits(0b00000000000000000000000000000000)).to eq(0)
    end

    it 'reverses the bits of 0b10000000000000000000000000000000' do
      # Input: 0b10000000000000000000000000000000 (binary) = 2147483648 (decimal)
      # Expected output: 1 (binary: 0b00000000000000000000000000000001)
      expect(reverse_bits(0b10000000000000000000000000000000)).to eq(1)
    end
  end
end
