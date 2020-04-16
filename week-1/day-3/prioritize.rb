def prioritize(array)
  new_array = array.select { |e| yield(e) }
  new_array.concat(array.select { |e| !yield(e) })
  new_array
end

test_array = [2, 3, 4, 5]
p prioritize(test_array) { |val| val > 3 }
# Should output: [4, 5, 2, 3]
