def shorten_to_date(long_date)
  week_day = long_date.split(' ')[0]
  month = long_date.split(' ')[1]
  day = long_date.split(' ')[2].to_i
  "#{week_day} #{month} #{day}"
end

p shorten_to_date("Monday February 2, 8pm") # prints "Monday February 2"
p shorten_to_date("Tuesday May 29, 8pm") # prints "Tuesday May 29"
p shorten_to_date("Wed September 1, 3am") # prints "Wed September 1"
p shorten_to_date("Friday May 2, 9am") # prints "Friday May 2"
p shorten_to_date("Tuesday January 29, 10pm") # prints "Tuesday January 29"
