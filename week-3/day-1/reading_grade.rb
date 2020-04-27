require 'textstat'

def reading_grade(text)
  TextStat.coleman_liau_index(text)
end

text1 = "Congratulations! Today is your day. You're off to Great Places! You're off and away!"
text2 = "Harry Potter was a highly unusual boy in many ways. For one thing, he hated the summer holidays more than any other time of year. For another, he really wanted to do his homework, but was forced to do it in secret, in the dead of the night. And he also happened to be a wizard."
text3 = "As the average number of letters and words per sentence increases, the Coleman-Liau index gives the text a higher reading level. If you were to take this paragraph, for instance, which has longer words and sentences than either of the prior two examples, the formula would give the text an eleventh grade reading level."

p reading_grade(text1) # aprox 3
p reading_grade(text2) # aprox 5
p reading_grade(text3) # aprox 11
