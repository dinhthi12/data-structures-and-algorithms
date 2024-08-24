# frozen_string_literal: true

require_relative '../../chapter2/lesson4'

RSpec.describe 'solution' do
  describe 'when input is a valid month' do
    it 'returns the correct quarter of the year' do
      expect(solution(1)).to eq(1)
      expect(solution(2)).to eq(1)
      expect(solution(3)).to eq(1)
      expect(solution(4)).to eq(2)
      expect(solution(5)).to eq(2)
      expect(solution(6)).to eq(2)
      expect(solution(7)).to eq(3)
      expect(solution(8)).to eq(3)
      expect(solution(9)).to eq(3)
      expect(solution(10)).to eq(4)
      expect(solution(11)).to eq(4)
      expect(solution(12)).to eq(4)
    end
  end

  describe 'when input is an invalid month' do
    it 'returns false' do
      expect(solution(0)).to eq(false)
      expect(solution(13)).to eq(false)
    end
  end
end
