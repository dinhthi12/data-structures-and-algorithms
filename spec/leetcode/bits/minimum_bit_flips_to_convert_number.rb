# frozen_string_literal: true

require_relative '../../../src/leetcode/bits/minimum_bit_flips_to_convert_number'

RSpec.describe 'solution' do
  describe 'Minimum Bit Flips to Convert Number' do
    it 'returns 3 when start = 10 and goal = 7' do
      expect(min_bit_flips(10, 7)).to eq(3)
    end

    it 'returns 3 when start = 3 and goal = 4' do
      expect(min_bit_flips(3, 4)).to eq(3)
    end

    it 'returns 0 when start = goal' do
      expect(min_bit_flips(5, 5)).to eq(0)
    end

    it 'returns 1 when start and goal differ by just one bit' do
      expect(min_bit_flips(2, 3)).to eq(1)
    end

    it 'handles large numbers' do
      expect(min_bit_flips(123456, 654321)).to eq(8)
    end
  end
end
