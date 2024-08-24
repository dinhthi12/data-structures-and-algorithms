# frozen_string_literal: true

require_relative '../../chapter2/lesson5'

RSpec.describe 'solution' do
  describe 'when n is 0' do
    it 'returns 0' do
      expect(solution(0)).to eq(0)
    end
  end

  describe 'when n is a positive integer' do
    it 'returns the correct sum' do
      expect(solution(1)).to eq(1)
      expect(solution(2)).to eq(9)
      expect(solution(3)).to eq(36)
    end
  end
end
