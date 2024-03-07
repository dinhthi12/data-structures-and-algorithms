require_relative '../functions/prime'

RSpec.describe "list_prime_numbers" do
  it "returns an empty array for n <= 2" do
    expect(list_prime_numbers(2)).to eq([])
    expect(list_prime_numbers(1)).to eq([])
  end

  it "returns the correct list of prime numbers for n > 2" do
    expect(list_prime_numbers(10)).to eq([2, 3, 5, 7])
    expect(list_prime_numbers(20)).to eq([2, 3, 5, 7, 11, 13, 17, 19])
  end

  it "returns an empty array for negative values of n" do
    expect(list_prime_numbers(-10)).to eq([])
  end
end
