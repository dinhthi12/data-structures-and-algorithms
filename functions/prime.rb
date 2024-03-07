def prime?(num)
  return false if num <= 1
  (2..Math.sqrt(num)).none? { |i| num % i == 0 }
end

# Hàm liệt kê tất cả các số nguyên tố nhỏ hơn n
def list_prime_numbers(n)
  primes = (2...n).select { |num| prime?(num) }
end
