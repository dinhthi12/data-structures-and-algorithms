require_relative '../../chapter1/lesson9'

RSpec.describe 'solution' do
  describe 'when n is 1' do
    it 'returns the correct multi' do
      expect(solution(1)).to eq(1)
    end
  end

  describe 'when n is 2' do
    it 'returns the correct multi' do
      expect(solution(2)).to eq(2)
    end
  end

  describe 'when n is 3' do
    it 'returns the correct multi' do
      expect(solution(3)).to eq(6)
    end
  end
end
