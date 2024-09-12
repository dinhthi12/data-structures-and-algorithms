# frozen_string_literal: true

require_relative '../../../src/exercises/chapter1/lesson16'

RSpec.describe 'solution' do
  it 'calculates the sum for n = 1 correctly' do
    expect(solution(1)).to be_within(0.0001).of(1.0)
  end

  it 'calculates the sum for n = 2 correctly' do
    expect(solution(2)).to be_within(0.0001).of(1.3333)
  end

  it 'calculates the sum for n = 3 correctly' do
    expect(solution(3)).to be_within(0.0001).of(1.8333)
  end

  it 'calculates the sum for n = 4 correctly' do
    expect(solution(4)).to be_within(0.0001).of(2.0833)
  end

  it 'calculates the sum for n = 5 correctly' do
    expect(solution(5)).to be_within(0.0001).of(2.2833)
  end

  it 'calculates the sum for n = 10 correctly' do
    expect(solution(10)).to be_within(0.0001).of(2.8288)
  end

  it 'calculates the sum for n = 100 correctly' do
    expect(solution(100)).to be_within(0.0001).of(3.1166)
  end

  it 'calculates the sum for n = 1000 correctly' do
    expect(solution(1000)).to be_within(0.0001).of(3.2499)
  end
end
