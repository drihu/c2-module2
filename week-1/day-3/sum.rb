def sum(*numbers)
  sum = 0
  numbers.each { |number| sum += number }
  sum
end

puts sum(10, 2, 3, 4, 5, 1, 20)
