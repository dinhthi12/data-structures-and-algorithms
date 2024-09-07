# frozen_string_literal: true

require_relative '../../src/exercises/chapter2/lesson6'

RSpec.describe 'solution' do
  it 'returns the smallest integer n such that the sum of integers from 1 to n is greater than 10000' do
    expect(solution).to eq(141)
  end
end
