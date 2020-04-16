def palindrome?(sentence)
  sentence_without_spaces = sentence.gsub(' ', '').downcase
  sentence_without_spaces == sentence_without_spaces.reverse
end
