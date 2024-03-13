require_relative '../matrix/prime_counter'

RSpec.describe PrimeCounter do
  describe "#count_primes" do
    it "returns the count of prime numbers in the matrix" do
      matrix = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
      ]
      prime_counter = PrimeCounter.new
      expect(prime_counter.count_primes(matrix)).to eq(4)
    end

    it "returns 0 if the matrix does not contain any prime numbers" do
      matrix = [
        [4, 6, 8],
        [10, 12, 15],
        [20, 25, 27]
      ]
      prime_counter = PrimeCounter.new
      expect(prime_counter.count_primes(matrix)).to eq(0)
    end

    it "returns 0 if the matrix is empty" do
      matrix = []
      prime_counter = PrimeCounter.new
      expect(prime_counter.count_primes(matrix)).to eq(0)
    end
  end
end
