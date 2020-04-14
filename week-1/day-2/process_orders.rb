def process_orders(people_orders)
  processed_orders = Hash.new(0)
  people_orders.each do |name, order|
    processed_orders[order] += 1
  end
  return processed_orders
end

people_orders = {
  "julio" => "pizza",
  "diego" => "saltado",
  "andres" => "hamburguer",
  "ximena" => "ceviche",
  "felipe" => "pizza",
  "jon" => "saltado",
  "snow" => "ceviche",
  "pepe" => "fried chicken",
  "queen of dragons" => "ice cream",
  "jose" => "hamburguer",
  "jafeth" => "fried chicken"
}

puts process_orders(people_orders)
