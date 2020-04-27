def split_string(string)
  string.scan(/.{1,2}/).map { |str| str.length == 2 ? str : "#{str}_" }
end

p split_string('abcdef') # prints ["ab", "cd", "ef"]
p split_string('abcdefg') # prints ["ab", "cd", "ef", "g_"]
p split_string('') # prints []
