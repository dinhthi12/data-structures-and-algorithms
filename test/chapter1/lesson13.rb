# frozen_string_literal: true

require_relative '../../chapter1/lesson13'

describe 'solution' do
  context 'when n is 0' do
    it 'returns the correct result' do
      expect(solution(1, 0)).to eq(0)
      expect(solution(2, 0)).to eq(0)
    end
  end

  context 'when n is greater than 0' do
    it 'returns the correct result' do
      expect(solution(2, 3)).to eq(84)
      expect(solution(3, 3)).to eq(819)
    end
  end
end
