numbers = [2, 56, 5, 3, 4, 6, 1, -3456, 123891, 454, 1, 23, 5, 7]

def min(numbers)
  min = numbers[0]
  numbers.each do |number|
    min = (min < number) ? min : number
  end
  return min
end

def max(numbers)
  max = numbers[0]
  numbers.each do |number|
    max = (max > number) ? max : number
  end
  return max
end

puts min(numbers) # Result is -3456
puts max(numbers) # Result is 123891
