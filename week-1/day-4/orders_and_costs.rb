class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    sum = 0
    orders.each do |order|
      order.each { |plate, quantity| sum += quantity * @menu[plate] }
    end
    sum
  end
end

p Restaurant.new({rice: 12, noodles: 5}).cost({rice: 2, noodles: 1}) # 29
p Restaurant.new({rice: 10, noodles: 6}).cost({rice: 1, noodles: 3}, {rice: 4, noodles: 2}) # 80
