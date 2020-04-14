print 'Number 1: '
num1 = gets.chomp.to_f

print 'Number 2: '
num2 = gets.chomp.to_f

def abs(n)
  n >= 0 ? n : -n
end

puts abs(num1 + num2)
