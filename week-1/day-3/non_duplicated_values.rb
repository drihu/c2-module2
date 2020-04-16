def non_duplicated_values(numbers)
  arr = []
  numbers.sort.each_with_index.each do |number, i|
    if i == 0
      arr << number if number != numbers[i + 1]
    elsif i == numbers.length - 1
      arr << number if number != numbers[i - 1]
    else
      arr << number if number != numbers[i + 1] && number != numbers[i - 1]
    end
  end
  arr
end

print non_duplicated_values([1,2,2,3,3,4,5]) # print [1,4,5]
print "\n"
