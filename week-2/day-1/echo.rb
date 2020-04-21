def put_n(string, n)
  if n.is_a?(Integer) && n > 0
    n.times { puts string }
  elsif !n.is_a? Integer
    raise ArgumentError.new('Second argument should be an integer.')
  elsif n <= 0
    raise ArgumentError.new('Second argument should be greater than 0.')
  end
end

def echo
  puts 'What do you want to echo?'
  string = gets.chomp
  puts 'How many times do you want to repeat it?'
  n = gets.chomp
  n = (n.to_i == n.to_f) ? n.to_i : n.to_f
  puts 'Ok, here it goes:'
  put_n(string, n)
  rescue ArgumentError
  puts "I don't understand how many times do you want to echo the string!"
  retry
end

echo
