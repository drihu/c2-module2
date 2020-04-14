print 'Amount(S/.): '
amount = gets.chomp.to_f

print 'Interest(%) per period: '
interest = gets.chomp.to_f

print 'Periods: '
n = gets.chomp.to_i

total = amount * (1 + interest / 100) ** n
puts total.round(2)
