class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    sum = initial_value
    @array.each { |n| sum += block_given? ? yield(n): n }
    sum
  end
end

# Given a custom class MyArray,
# write a 'sum' method that takes a block parameter.
my_array = MyArray.new([1, 2, 3])
p my_array.sum # gives 6
p my_array.sum(10) # gives 16
p my_array.sum(0) {|n| n ** 2 } # gives 14
