require_relative '../exercises/farthest_value'

RSpec.describe "farthest_value" do
  it "returns the value farthest from x" do
    array = [1.5, 2.7, 3.9, 5.2, 6.4]
    x_value = 4.0
    expect(farthest_value(array, x_value)).to eq([1.5])
  end

  it "returns the first value if all values are equally distant from x" do
    array = [1.5, 2.5, 3.5, 4.5]
    x_value = 4.0
    expect(farthest_value(array, x_value)).to eq([1.5])
  end

  it "returns an empty array if array is empty" do
    array = []
    x_value = 4.0
    expect(farthest_value(array, x_value)).to eq([])
  end
end
