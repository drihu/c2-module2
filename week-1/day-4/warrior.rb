# Create a Warrior class
# It must support level, rank, experience, achievements,
# training(event), and battle(enemy_level) methods
class Warrior
  @@ranks = [
    'Pushover', 'Novice', 'Fighter', 'Warrior', 'Veteran', 'Sage',
    'Elite', 'Conqueror', 'Champion', 'Master', 'Greatest',
  ]

  attr_accessor :achievements
  def initialize
    @experience = 100
    @achievements = []
  end

  def experience
    (@experience < 10_000) ? @experience : 10_000
  end

  def level
    experience / 100
  end

  def rank(lv = level)
    @@ranks[lv / 10]
  end

  def battle(enemy_level)
    if enemy_level.between?(1, 100)
      case
      when enemy_level > level
        if ((level / 10) < (enemy_level / 10)) && (level <= enemy_level - 5)
          return "You've been defeated"
        else
          @experience += 20 * (enemy_level - level) ** 2
          return 'An intense fight'
        end
      when enemy_level == level
        @experience += 10
        return 'A good fight'
      when enemy_level == level - 1
        @experience += 5
        return 'A good fight'
      when enemy_level < level - 1
        @experience += 0
        return 'Easy fight'
      end
    else
      return 'Invalid level'
    end
  end

  def training(arr)
    if level >= arr[2]
      @experience += arr[1]
      @achievements << arr[0]
      return arr[0]
    else
      return 'Not strong enough'
    end
  end
end

tom = Warrior.new
p tom.level # prints 1
p tom.experience # prints 100
p tom.rank # prints "Pushover"

bruce_lee = Warrior.new
p bruce_lee.level # prints 1
p bruce_lee.experience # prints 100
p bruce_lee.rank # prints "Pushover"
p bruce_lee.achievements # prints []
p bruce_lee.training(["Defeated Chuck Norris", 9000, 1]) # prints "Defeated Chuck Norris"
p bruce_lee.experience # prints 9100
p bruce_lee.level # prints 91
p bruce_lee.rank # prints "Master"
p bruce_lee.battle(90) # prints "A good fight"
p bruce_lee.experience # prints 9105
p bruce_lee.achievements # prints ["Defeated Chuck Norris"]
