require_relative '../basic/find_max_arr'

RSpec.describe "find_max" do
  it "should return the maximum value in the array" do
    expect(find_max([3.5, 2.1, 7.8, 4.6, 9.2])).to eq(9.2)
  end

  it "should return nil for an empty array" do
    expect(find_max([])).to eq(nil)
  end

  it "should return the only value in the array" do
    expect(find_max([5.5])).to eq(5.5)
  end

  it "should return the maximum value for negative numbers" do
    expect(find_max([-3.5, -2.1, -7.8, -4.6, -9.2])).to eq(-2.1)
  end
end
