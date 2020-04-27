def split_string(string)
  string.concat('_').scan(/.{2}/)
end

p split_string('abcdef') # prints ["ab", "cd", "ef"]
p split_string('abcdefg') # prints ["ab", "cd", "ef", "g_"]
p split_string('') # prints []
