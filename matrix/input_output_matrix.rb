def input_matrix(m, n)
  matrix = Array.new(m) { Array.new(n, 0) }
  puts "Enter the elements of the matrix:"
  m.times do |i|
    n.times do |j|
      print "Enter the element at row #{i + 1}, column #{j + 1}: "
      matrix[i][j] = gets.chomp.to_i
    end
  end
  matrix
end

def output_matrix(matrix)
  puts "The entered matrix is:"
  matrix.each { |row| puts row.join(" ") }
end

puts "Enter the number of rows of the matrix:"
rows = gets.chomp.to_i
puts "Enter the number of columns of the matrix:"
cols = gets.chomp.to_i

matrix = input_matrix(rows, cols)
output_matrix(matrix)
