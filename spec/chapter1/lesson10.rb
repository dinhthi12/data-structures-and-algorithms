# frozen_string_literal: true

require_relative '../../src/exercises/chapter1/lesson10'

RSpec.describe 'solution' do
  describe 'when x = 2, n = 3' do
    it 'returns the correct result' do
      expect(solution(2, 3)).to eq(8)
    end
  end

  describe 'when x = 5, n = 2' do
    it 'returns the correct result' do
      expect(solution(5, 2)).to eq(25)
    end
  end

  describe 'when x = 10, n = 0' do
    it 'returns the correct result' do
      expect(solution(10, 0)).to eq(1)
    end
  end
end
