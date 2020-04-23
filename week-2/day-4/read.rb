def read(filename)
  name = File.open(filename, 'r') { |file| file.read }
  name = (name[-1] == "\n") ? name[0..-2] : name
  puts "Your name is #{name}!"
end

read('read_name.txt') # prints "Your name is Ricardo!"
