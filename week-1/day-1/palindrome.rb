def palindrome?(sentence)
  sentence.downcase.split.join == sentence.downcase.split.join.reverse
end
