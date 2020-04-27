class String
  def vowel?
    self.match?(/\A[aeiou]\Z/i)
  end
end

p "".vowel? # prints false
p "a".vowel? # prints true
p "E".vowel? # prints true
p "ou".vowel? # prints false
p "z".vowel? # prints false
p "lol".vowel? # prints false
