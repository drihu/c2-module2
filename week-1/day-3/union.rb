def union(*arrays)
  arrays.reduce { |result, array| result + (array - result) }
end

p union([5, 10, 15], [15, 88, 1, 5, 7], [100, 15, 10, 1, 5])
# Should output: [5, 10, 15, 88, 1, 7, 100]
