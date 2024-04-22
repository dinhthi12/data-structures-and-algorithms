require_relative '../../chapter1/lesson3'

RSpec.describe 'solution' do
  describe 'when n is 0' do
    it 'returns 0' do
      expect(solution(0)).to eq(0)
    end
  end

  describe 'when n is a positive interger' do
    it 'returns the correct sum of dive' do
      expect(solution(1)).to eq(1)
      expect(solution(2)).to eq(1.5)
      expect(solution(3)).to eq(1.8333333333333333)
    end
  end
end
1
