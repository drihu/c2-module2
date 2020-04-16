def intersection(*arrays)
  arrays.reduce { |result, array| result - (result - array) }
end

p intersection([5, 10, 15, 20], [15, 88, 1, 5, 7], [1, 10, 15, 5, 20])
# Should output: [5, 15]
