def find_max_min(a, b, c)
  max = [a, b, c].max
  min = [a, b, c].min
  puts "Số lớn nhất là: #{max}"
  puts "Số bé nhất là: #{min}"
end

# Test case 1: Số lớn nhất là 10, số bé nhất là 5
puts "Test case 1:"
find_max_min(10, 7, 5)

# Test case 2: Số lớn nhất và số bé nhất đều là 3
puts "Test case 2:"
find_max_min(3, 3, 3)

# Test case 3: Số lớn nhất là -1, số bé nhất là -5
puts "Test case 3:"
find_max_min(-5, -1, -3)
