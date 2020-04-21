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

p digital_root(16) # prints 7
p digital_root(456) # prints 6
p digital_root(132189) # prints 6
