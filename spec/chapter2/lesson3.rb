# frozen_string_literal: true

require_relative '../../chapter2/lesson3'

RSpec.describe 'solution' do
  describe 'when a is 0' do
    it 'returns false' do
      expect(solution(0, 5)).to eq(false)
    end
  end

  describe 'when b is 0' do
    it 'returns 0' do
      expect(solution(2, 0)).to eq(0)
    end
  end

  describe 'when a and b are not 0' do
    it 'returns the correct value of x' do
      expect(solution(2, 4)).to eq(-2)
      expect(solution(-3, -9)).to eq(-3)
      expect(solution(5, -15)).to eq(3)
    end
  end
end
