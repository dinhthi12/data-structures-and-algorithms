# frozen_string_literal: true

# In tất cả các số nɡuyên dươnɡ lẻ nhỏ hơn 100

def solution
  # method1
  arr = []
  (1...100).each do |i|
    arr << i if i.odd?
  end
  arr

  #   method2
  #    (1...100).each do |i|
  #      arr << i if i.odd?
  #    end
  #    arr
end
