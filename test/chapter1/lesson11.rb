require_relative '../../chapter1/lesson11'

describe 'solution' do
  context 'when n is 1' do
    it 'returns the correct result' do
      expect(solution(1)).to eq(1)
    end
  end

  context 'when n is greater than 1' do
    it 'returns the correct result' do
      expect(solution(2)).to eq(3)
      expect(solution(3)).to eq(9)
      expect(solution(4)).to eq(33)
    end
  end
end
