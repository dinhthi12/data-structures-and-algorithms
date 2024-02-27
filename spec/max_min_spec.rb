require_relative '../basic/max_min'

RSpec.describe "find_max_min" do
  it "should return the max and min numbers correctly" do
    expect(solution(10, 7, 5)).to eq([10, 5])
    expect(solution(3, 3, 3)).to eq([3, 3])
    expect(solution(-5, -1, -3)).to eq([-1, -5])
  end
end
