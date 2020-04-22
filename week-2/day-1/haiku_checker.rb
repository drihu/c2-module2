def is_haiku?(text)
  lines = text.lines.map { |line| line.strip << "\n" }
  syllable_count = []
  vowel = /[aeiouy]+[bcdfghjklmnpqrstvwxyz]+e[^a-z]|[aeiouy]+/i
  lines.each_with_index do |line, i|
    syllable_count[i] = line.scan(vowel).length
  end
  [5, 7, 5] == syllable_count
end

# Haikus are short poems in a three-line format, with 17
# syllables arranged in a 5–7–5 pattern. Your task is
# to check if the supplied text is a haiku or not.
p is_haiku?("""\
An old silent pond...
A frog jumps into the pond,
splash! Silence again.""") # prints true

p is_haiku?("""\
Autumn moonlight -
a worm digs silently
into the chestnut.""") # prints false

p is_haiku?("") # prints false

p is_haiku?("""\
My code is cool, right?
Java # Python ; Ruby // Go:
I know them all, yay! ;-)""") # prints true

p is_haiku?("""\
An old silent pond...
A frog jumps into the pond, splash!
Silence again.""") # prints false
