def farthest_value(array, x)
  distances = array.map { |value| (value - x).abs }
  max_distance = distances.max
  farthest_values = array.select.with_index { |_, i| distances[i] == max_distance }
  farthest_values
end
