# frozen_string_literal: true

require_relative '../../../src/leetcode/bits/number_of_1_bits'

RSpec.describe 'solution' do
  describe '#hamming_weight' do
    it 'returns the number of 1 bits in 11' do
      # Binary representation of 11: 0b00000000000000000000000000001011
      # There are 3 ones in the binary representation of 11
      expect(hamming_weight(11)).to eq(3)
    end

    it 'returns the number of 1 bits in 128' do
      # Binary representation of 128: 0b00000000000000000000000010000000
      # There is 1 one in the binary representation of 128
      expect(hamming_weight(128)).to eq(1)
    end

    it 'returns the number of 1 bits in 2147483645' do
      # Binary representation of 2147483645: 0b11111111111111111111111111111101
      # There are 30 ones in the binary representation of 2147483645
      expect(hamming_weight(2147483645)).to eq(30)
    end

    it 'returns the number of 1 bits in 0' do
      # Binary representation of 0: 0b00000000000000000000000000000000
      # There are 0 ones in the binary representation of 0
      expect(hamming_weight(0)).to eq(0)
    end

    it 'returns the number of 1 bits in 255' do
      # Binary representation of 255: 0b00000000000000000000000011111111
      # There are 8 ones in the binary representation of 255
      expect(hamming_weight(255)).to eq(8)
    end
  end
end