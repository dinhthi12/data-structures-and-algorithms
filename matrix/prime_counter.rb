class PrimeCounter
  def count_primes(matrix)
    count = 0
    matrix.each do |row|
      row.each do |num|
        count += 1 if prine?(num)
      end
    end
    count
  end

  private

  def prine?(num)
    return false if num <= 1
    (2..Math.sqrt(num)).none? { |i| num % i ==0}
  end
end
