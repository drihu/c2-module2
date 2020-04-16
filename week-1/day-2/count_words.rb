def count_words(text)
  words = text.split(' ')
  frequencies = Hash.new(0)

  words.each do |word|
    frequencies[word.downcase] += 1
  end

  return frequencies
end

puts count_words('cake cake caKe I like cake very much please gIve me cake I need the cake i need it')
