require_relative '../../chapter1/lesson1'

RSpec.describe 'solution' do
  describe 'when n is 0' do
    it 'returns 0' do
      expect(solution(0)).to eq(0)
    end
  end

  describe 'when n is a positive integer' do
    it 'returns the correct sum' do
      expect(solution(1)).to eq(1)
      expect(solution(2)).to eq(3)
      expect(solution(3)).to eq(6)
    end
  end
end
1
