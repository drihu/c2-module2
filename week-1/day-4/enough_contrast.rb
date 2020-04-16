class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    (299 * r + 587 * g + 114 * b) / 1000
  end

  def brightness_difference(another_color)
    (self.brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
    (@r - another_color.r).abs + (@g - another_color.g).abs + (@b - another_color.b).abs
  end

  def enough_contrast?(another_color)
    if self.brightness_difference(another_color) > 125 && self.hue_difference(another_color)
      return true
    end
    return false
  end
end

p Color.new(42, 21, 58).enough_contrast?(Color.new(240, 41, 25)) # prints false
p Color.new(42, 42, 42).enough_contrast?(Color.new(210, 210, 210)) # prints true
