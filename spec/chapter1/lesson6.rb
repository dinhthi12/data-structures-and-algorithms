# frozen_string_literal: true

require_relative '../../chapter1/lesson6'

RSpec.describe 'solution' do
  describe 'when n is 1' do
    it 'returns the correct sum' do
      expect(solution(1)).to eq(0.5)
    end
  end

  describe 'when n is 2' do
    it 'returns the correct sum' do
      expect(solution(2)).to eq(0.6666666666666666)
    end
  end

  describe 'when n is 3' do
    it 'returns the correct sum' do
      expect(solution(3)).to eq(0.75)
    end
  end
end
