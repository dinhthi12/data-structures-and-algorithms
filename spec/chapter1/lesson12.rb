# frozen_string_literal: true

require_relative '../../src/exercises/chapter1/lesson12'

describe 'solution' do
  context 'when n is 0' do
    it 'returns the correct result' do
      expect(solution(1, 0)).to eq(1)
      expect(solution(2, 0)).to eq(1)
    end
  end

  context 'when n is greater than 0' do
    it 'returns the correct result' do
      expect(solution(2, 3)).to eq(15)
      expect(solution(2, 4)).to eq(31)
    end
  end
end
