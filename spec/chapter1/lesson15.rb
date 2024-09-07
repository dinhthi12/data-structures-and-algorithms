# frozen_string_literal: true

require_relative '../../src/exercises/chapter1/lesson15'

describe 'solution' do
  it 'returns the correct result' do
    expect(solution(1)).to eq(2)
    expect(solution(2)).to eq(4.333333333333333)
    expect(solution(3)).to eq(7.5)
    expect(solution(5)).to eq(16.666666666666668)
  end
end
