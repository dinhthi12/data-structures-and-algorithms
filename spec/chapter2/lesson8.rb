# frozen_string_literal: true

require_relative '../../src/exercises/chapter2/lesson8'

RSpec.describe 'solution' do
  describe 'when is n = 0' do
    it 'returns 0' do
      expect(solution(0)).to eq(0)
    end
  end

  describe 'when is n = 10' do
    it 'returns result 25' do
      expect(solution(10)).to eq(25)
    end
  end

  describe 'when is n = 15' do
    it 'returns result 49' do
      expect(solution(15)).to eq(49)
    end
  end

  describe 'when is n = -5' do
    it 'returns result false' do
      expect(solution(-5)).to eq(0)
    end
  end
end
