def write(filename)
  puts 'What is your name?'
  name = gets.chomp
  puts 'Writting your name to a file!'

  File.write(filename, name)
end

write('write_name.txt')
