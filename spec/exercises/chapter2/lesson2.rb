# frozen_string_literal: true

require_relative '../../../src/exercises/chapter2/lesson2'

RSpec.describe 'solution' do
  describe 'when both numbers have the same sign' do
    it 'returns true' do
      expect(solution(3.5, 2.7)).to eq(true)
      expect(solution(-3.5, -2.7)).to eq(true)
      expect(solution(0, 0)).to eq(true)
    end
  end

  describe 'when both numbers have different signs' do
    it 'returns false' do
      expect(solution(3.5, -2.7)).to eq(false)
      expect(solution(-3.5, 2.7)).to eq(false)
    end
  end
end
