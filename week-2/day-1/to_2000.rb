class String
  def to_2000
    letter_index = 0
    message = self.split('').map do |char|
      if char =~ /[[:alpha:]]/ && letter_index.even?
        letter_index += 1
        char.upcase
      elsif char =~ /[[:alpha:]]/
        letter_index += 1
        char.downcase
      else
        char
      end
    end
    message.join
  end
end

p "Hola, como estas?".to_2000 # prints "HoLa, CoMo EsTaS?""
p "Porque escribes de esa manera?".to_2000 # prints "PoRqUe EsCrIbEs De EsA mAnErA?"
p "What is wrong with you?".to_2000 # prints "WhAt Is WrOnG wItH yOu?"
