def random_select(array, n)
  len = array.length
  arr = []
  n.times do
    arr << array[rand(len)]
  end
  return arr
end

puts random_select([1, 2, 3, 4, 5], 2)
puts random_select([1, 2, 3, 4], 2)
puts random_select([1, 2, 3], 2)
