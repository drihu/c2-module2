class CaesarCipher
  def initialize(shift)
    @shift = shift
  end

  def encode(string)
    cipher = ''
    string.upcase.split('').each do |c|
      if c.ord >= 65 && c.ord <= 90
        cipher << ((c.ord - 64 + @shift) % 26 + 64).chr
      else
        cipher << c
      end
    end
    cipher
  end

  def decode(string)
    plain = ''
    string.split('').each do |c|
      if c.ord >= 65 && c.ord <= 90
        plain << ((c.ord - 64 + 26 - (@shift % 26)) % 26 + 64).chr
      else
        plain << c
      end
    end
    plain
  end
end

# Write a class that, when given a string, will return an uppercase
# string with each letter shifted forward in the alphabet by
# howevermany spots the cipher was initialized to.
c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
p c.encode('Codewars') # returns 'HTIJBFWX'
p c.decode('BFKKQJX') # returns 'WAFFLES'
