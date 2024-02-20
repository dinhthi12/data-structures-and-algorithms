require_relative 'max_min'

RSpec.describe "find_max_min" do
  it "should return the max and min numbers correctly" do
    expect(find_max_min(10, 7, 5)).to eq([10, 5])
    expect(find_max_min(3, 3, 3)).to eq([3, 3])
    expect(find_max_min(-5, -1, -3)).to eq([-1, -5])
  end
end
