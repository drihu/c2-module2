class Laptop
  def initialize(mark, code)
    @mark = mark
    @code = code
  end

  def bootup
    puts "Subject #{@mark}:#{@code} is booting up."
  end

  def shutdown
    puts "Subject #{@mark}:#{@code} is shutting down."
  end
end

class Phone
  def initialize(mark, number)
    @mark = mark
    @number = number
  end

  def advert
    puts "Best value for money: #{@mark}"
  end

  def call(number)
    puts "#{@mark} phone is calling from #{@number} to #{number}."
  end
end

class Player
  def initialize(username, game)
    @username = username
    @game = game
  end

  def introduce
    puts "I'm #{@username} and play #{@game}"
  end

  def play
    puts "I'm playing. Don't bother me."
  end

  def rampage
    puts "I've killed 5 people."
  end
end

class Cup
  def initialize(color, size)
    @color = color
    @size = size
    @broke = false
  end

  # Using a [bang method](http://ruby-for-beginners.rubymonstas.org/objects/bangs)
  # instead of a normal one because this would modify the Cup object
  def break!
    if @broke
      puts "Cup is already broken! calm yourself!"
    else
      @broke = true
      puts "Splat!!!"
    end
  end
end

# Note how I use a symbol here instead of a "string", here
# I'm using :white and :small as identifiers for the color and
# size.
julios_cup = Cup.new(:white, :small)
julios_cup.break! # Logs: Splat!!!
julios_cup.break! # Logs: Cup is already broken! calm yourself!

puts '----------'

my_laptop = Laptop.new(:Asus, 'X555L')
my_laptop.bootup
my_laptop.shutdown

my_phone = Phone.new(:Xiaomi, 987654321)
my_phone.advert
my_phone.call(963852741)

me = Player.new('jedam', 'Dota')
me.introduce
me.play
me.rampage
