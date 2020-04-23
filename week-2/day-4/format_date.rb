require 'date'

def format_date(date)
  "#{Date::MONTHNAMES[date.month]} #{date.day}, del #{date.year}"
end


date = Time.new(2020, 4, 10)
p format_date(date) # prints "April 10, del 2020"
