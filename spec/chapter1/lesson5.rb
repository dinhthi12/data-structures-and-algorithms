# frozen_string_literal: true

require_relative '../../src/exercises/chapter1/lesson5'

RSpec.describe 'solution' do
  describe 'when n is 0' do
    it 'returns 0' do
      expect(solution(0)).to eq(0.0)
    end
  end

  describe 'when n is a positive integer' do
    it 'returns the correct sum' do
      expect(solution(1)).to eq(1.0 / 3)
      expect(solution(2)).to eq((1.0 / 3) + (1.0 / 5))
      expect(solution(3)).to eq((1.0 / 3) + (1.0 / 5) + (1.0 / 7))
    end
  end
end
