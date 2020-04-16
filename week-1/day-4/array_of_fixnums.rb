def array_of_fixnums?(array)
  array.each { |n| return false unless n.is_a?(Fixnum) }
  return true
end

p array_of_fixnums?([1,2,3]) # prints true
p array_of_fixnums?(['a',1,:b]) # prints false
p array_of_fixnums?([]) # prints true
