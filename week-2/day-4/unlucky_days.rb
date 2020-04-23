require 'date'

def unlucky_days(year)
  unlucky_days = 0
  first_day = Date.new(year, 1, 1)
  last_day = Date.new(year, 12, 31)
  (first_day..last_day).each do |date|
    unlucky_days += 1  if date.friday? && date.day == 13
  end
  unlucky_days
end

p unlucky_days(2819) # prints 2
p unlucky_days(2792) # prints 2
p unlucky_days(2723) # prints 2
p unlucky_days(1909) # prints 1
p unlucky_days(1812) # prints 2
p unlucky_days(1618) # prints 2
p unlucky_days(2132) # prints 1
