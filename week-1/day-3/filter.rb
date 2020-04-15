def filter(arr)
  new_arr = []
  arr.length.times { |i| new_arr << arr[i] if yield(arr[i]) }
  new_arr
end

test_array = [2, 3, 4, 5]
p filter(test_array) { |element| element > 3 }
# Result: [4, 5] -> numbers 2 and 3 were removed
