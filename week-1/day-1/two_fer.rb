print 'who? '
name = gets.chomp.strip

def message(name = 'you')
  puts "One for #{name}, one for me."
end

(!name.empty?) ? message(name) : message
