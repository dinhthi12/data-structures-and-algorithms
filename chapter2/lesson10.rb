# In tất cả các số nɡuyên dươnɡ lẻ nhỏ hơn 100

def solution
  #method1
  arr = []
  for i in 1...100
    if i % 2 != 0
      arr << i
    end
  end
  arr

=begin
  method2
   (1...100).each do |i|
     arr << i if i.odd?
   end
   arr
=end
end
