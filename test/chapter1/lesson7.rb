require_relative '../../chapter1/lesson7'

RSpec.describe 'solution' do
  describe 'when n is 2' do
    it 'returns the correct sum' do
      expect(solution(2)).to eq(1.1666666666666665)
    end
  end

  describe 'when n is 3' do
    it 'returns the correct sum' do
      expect(solution(3)).to eq(1.9166666666666665)
    end
  end

  describe 'when n is 5' do
    it 'returns the correct sum' do
      expect(solution(5)).to eq(3.5500000000000003)
    end
  end
end
