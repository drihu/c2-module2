require 'date'

def age?(year, month, day)
  birthday = Date.new(year, month, day)
  today = Date.today
  passed_years = today.year - birthday.year
  today_short_date = Date.new(0, today.month, today.day)
  birthday_short_date = Date.new(0, birthday.month, birthday.day)
  (today_short_date >= birthday_short_date) ? passed_years : passed_years - 1
end

p age?(1994, 2, 24) # Should return 26
