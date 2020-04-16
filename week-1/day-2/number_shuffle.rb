def number_shuffle(number)
  new_shuffle = []

  if number > 9
    len = number.to_s.length
    last_digit = number % 10
    previous_number = number / 10
    previous_shuffle = number_shuffle(previous_number)

    previous_shuffle.each do |n|
      i = 0
      while i < len
        digits = n.to_s.split('')
        new_number = digits.insert(i, last_digit.to_s).join.to_i
        new_shuffle << new_number
        i += 1
      end
    end
    return new_shuffle.sort
  else
    return [number]
  end
end

print number_shuffle(123)
print "\n"
