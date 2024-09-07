# frozen_string_literal: true

require_relative '../../src/exercises/chapter2/lesson1'

RSpec.describe 'solution' do
  describe 'when all numbers are positive' do
    it 'returns the maximun number' do
      expect(solution(1, 2, 3)).to eq(3)
      expect(solution(4, 2, 1)).to eq(4)
      expect(solution(6, 8, 7)).to eq(8)
    end
  end

  describe 'when some numbers are negative' do
    it 'returns the maximum number' do
      expect(solution(-1, -2, -3)).to eq(-1)
      expect(solution(-4, -2, -1)).to eq(-1)
      expect(solution(-6, 8, 7)).to eq(8)
    end
  end

  describe 'when all numbers are negative' do
    it 'returns the maximum number' do
      expect(solution(-1, -2, -3)).to eq(-1)
      expect(solution(-4, -2, -1)).to eq(-1)
      expect(solution(-6, -8, -7)).to eq(-6)
    end
  end
end
