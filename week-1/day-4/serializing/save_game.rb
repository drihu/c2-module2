require 'yaml'

class Ogre
  attr_accessor :strength, :speed, :smell
  def initialize(strength, speed, smell)
    @strength = strength
    @speed = speed
    @smell = smell
  end
end

class Dragon
  attr_accessor :strength, :speed, :color
  def initialize(strength, speed, color)
    @strength = strength
    @speed = speed
    @color = color
  end
end

class Fairy
  attr_accessor :strength, :speed, :intelligence
  def initialize(intelligence)
    @strength = 1
    @speed = 42
    @intelligence = intelligence
  end
end

def save_game(characters)
  yaml = YAML::dump(characters)
  File.open('file.yaml', 'w') do |file|
    file.write(yaml)
  end
end

def load_game
  yaml = ''
  File.open('file.yaml', 'r') do |file|
    yaml = file.read
  end
  YAML::load(yaml)
end

# FILE CONTENT
# ---
# :ogres:
# - !ruby/object:Ogre
#   strength: 100
#   speed: 75
#   smell: small
# - !ruby/object:Ogre
#   strength: 120
#   speed: 50
#   smell: strong
fiona = Ogre.new(100, 75, 'small')
shrek = Ogre.new(120, 50, 'strong')
save_game({ogres: [fiona, shrek]})
p load_game
