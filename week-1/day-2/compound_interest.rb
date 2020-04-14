print 'Amount(S/.): '
amount = gets.chomp.to_f

print 'Interest(%) per period: '
interest = gets.chomp.to_f

print 'Periods: '
n = gets.chomp.to_i

i = 0
while i < n
  amount *= 1 + interest / 100
  i += 1
end

puts amount.round(2)
