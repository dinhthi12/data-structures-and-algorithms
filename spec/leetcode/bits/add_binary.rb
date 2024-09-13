# frozen_string_literal: true

require_relative '../../../src/leetcode/bits/add_binary'

RSpec.describe 'solution' do
  describe 'Binary Addition' do
    it 'returns the correct sum when both inputs are equal length' do
      expect(add_binary('1010', '1011')).to eq('10101')
    end

    it 'returns the correct sum when inputs have different lengths' do
      expect(add_binary('11', '1')).to eq('100')
    end

    it 'returns the correct sum when inputs result in a carry-over' do
      expect(add_binary('111', '1')).to eq('1000')
    end

    it 'returns the correct sum when both inputs are empty' do
      expect(add_binary('', '')).to eq('')
    end

    it 'returns the correct sum when one input is empty' do
      expect(add_binary('101', '')).to eq('101')
    end

    it 'handles leading zeros' do
      expect(add_binary('11', '1')).to eq('100')
    end
  end
end