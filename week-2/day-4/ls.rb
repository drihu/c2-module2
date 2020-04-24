require 'readline'

def display(option, directory)
  files = Dir.entries(directory).sort_by(&:downcase)

  if option != '-a' && option != '-as' && option != '-sa'
    files = files.select { |file| file != '.' && file != '..' }
  end

  if option == '-s' || option == '-as' || option == '-sa'
    sizes = files.map { |file| "#{File.size(file)}" }
  end

  if option && (option != '-a' && option != '-s' && option != '-as' && option != '-sa')
    puts "Option '#{option}' not supported"
  end

  files = files.collect { |file| File.directory?(file) ? "#{file}/" : file }
  if sizes
    files.each_with_index { |file, i| puts "#{file} #{sizes[i]}" }
  else
    files.each { |file| puts file }
  end
end

while input = Readline.readline('> ', true)
  if input.empty? || input.split(' ')[0] != 'ls' || input.split(' ').length > 3
    puts "Please enter a command like 'ls -a'"
    next
  end

  words = input.split(' ')
  command = words[0]
  if words[1] && words[1][0] == '-'
    option = words[1]
    argument = words[2]
  else
    argument = words[1]
  end

  directory = Dir.pwd if argument.nil?
  display(option, directory)

  option = nil
  argument = nil
end
