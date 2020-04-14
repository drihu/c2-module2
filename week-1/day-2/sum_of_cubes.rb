def sum_of_cubes(a, b)
  sum = 0
  for i in a..b
    sum += i ** 3
  end
  return sum
end

puts sum_of_cubes(3, 5) # prints 216
puts sum_of_cubes(1, 3) # prints 36
