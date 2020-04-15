def map(arr)
  new_arr = []
  arr.length.times { |i| new_arr << yield(arr[i]) }
  new_arr
end

test_array = [2, 3, 4, 5]
p map(test_array) { |element| element * 3}
# Result: [6, 9, 12, 15]
