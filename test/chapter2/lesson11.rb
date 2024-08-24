# frozen_string_literal: true

require_relative '../../chapter2/lesson11'

describe 'solution' do
  context 'when both numbers are prime' do
    it 'returns 1' do
      expect(solution(5, 7)).to eq(1)
      expect(solution(17, 19)).to eq(1)
    end
  end

  context 'when one number is prime and the other is not' do
    it 'returns 1' do
      expect(solution(4, 7)).to eq(1)
      expect(solution(13, 6)).to eq(1)
    end
  end

  context 'when both numbers have common factors' do
    it 'returns the correct result' do
      expect(solution(24, 36)).to eq(12)
      expect(solution(48, 60)).to eq(12)
    end
  end

  context 'when one number is a multiple of the other' do
    it 'returns the smaller number' do
      expect(solution(8, 24)).to eq(8)
      expect(solution(15, 75)).to eq(15)
    end
  end
end
