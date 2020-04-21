def digits(number)
  number.to_s.split('').map { |digit| digit.to_i }
end

def digital_root(number)
  if number < 10
    number
  else
    sum = digits(number).inject { |sum, digit| sum + digit }
    digital_root(sum)
  end
end

# A digital root is the recursive sum of all the digits in a number.
# Given n, take the sum of the digits of n. If that value has more
# than one digit, continue reducing in this way until a single-digit
# number is produced. This is only applicable to the natural numbers.
p digital_root(16) # prints 7
p digital_root(456) # prints 6
p digital_root(132189) # prints 6
p digital_root(493193) # prints 2
