require_relative '../../chapter1/lesson14'

describe 'solution' do
  context 'when n is 0' do
    it 'returns the correct result' do
      expect(solution(1, 0)).to eq(1)
      expect(solution(2, 0)).to eq(2)
    end
  end

  context 'when n is greater than 0' do
    it 'returns the correct result' do
      expect(solution(2, 3)).to eq(170)
      expect(solution(3, 3)).to eq(2460)
    end
  end
end
