require 'date'

def format_date(date)
  date.strftime("%B %d, del %Y")
end


date = Time.new(2020, 4, 10)
p format_date(date) # prints "April 10, del 2020"
