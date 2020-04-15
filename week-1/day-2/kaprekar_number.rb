def kaprekar?(k)
  square = k ** 2
  len = square.to_s.length
  e = len - len / 2

  sum = square / 10 ** e + square % 10 ** e
  return true if sum == k
  return false
end

puts kaprekar?(9) # returns true for 9 ✔
puts kaprekar?(46) # returns false for 46 ✔
puts kaprekar?(55) # returns true for 55 ✔
puts kaprekar?(90) # returns false for 90 ✔
puts kaprekar?(297) # returns true for 297 ✔
puts kaprekar?(703) # returns true for 703 ✔
