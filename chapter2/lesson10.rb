# In tất cả các số nɡuyên dươnɡ lẻ nhỏ hơn 100

def solution
  #c1
  arr = Array.new

  for i in 1 ... 100
    if i % 2 != 0
      arr << i
    end
  end

  return arr


  #c2
  #arr = []
  #(1...100).each do |1|
  #arr << i if i.odd?
  #end
  #
  #arr
end
