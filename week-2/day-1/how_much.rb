# Exchange Rate
RATE = {
  'USD' => 1,
  'PEN' => 3,
  'ARS' => 40,
}

def to_hashes(text)
  lines = text.lines.map { |line| line.strip }
  keys = lines[0].split(', ')

  products = lines[1..-1].inject([]) do |products, line|
    words = line.split(', ')
    product = {}
    words.each_with_index do |word, index|
      product[keys[index]] = word
    end
    products << product
  end

  products
end

def most_stocked(products)
  sorted_products = products.sort_by { |product| product['Amount'].to_i }
  sorted_products.last
end

def unit_price(label)
  currency = label.split(' ').first
  value = label.split(' ').last.to_f
  unit_price = value / RATE[currency]
end

def total_price(products)
  total_price = products.inject(0) do |total, product|
    total + unit_price(product['(Symbol) Price']) * product['Amount'].to_i
  end
  total_price.round(2)
end

input = "Category, (Symbol) Price, Stock, Amount, Name\n"\
  "Sporting Goods, USD 49.99, true, 10, Football\n"\
  "Sporting Goods, PEN 9.99, true, 3, Baseball\n"\
  "Sporting Goods, ARS 29.99, false, 0, Basketball\n"\
  "Electronics, PEN 99.99, true, 5, iPod Touch\n"\
  "Electronics, USD 399.99, false, 0, iPhone 5\n"\
  "Electronics, PEN 199.99, true, 2, Nexus 7"
# The next returns an array of hashes:
products = to_hashes(input)
# {"Category"=>"Sporting Goods", "(Symbol) Price"=>"USD 49.99", "Stock"=>"true", "Amount"=>"10", "Name"=>"Football"}
# {"Category"=>"Sporting Goods", "(Symbol) Price"=>"PEN 9.99", "Stock"=>"true", "Amount"=>"3", "Name"=>"Baseball"}
# {"Category"=>"Sporting Goods", "(Symbol) Price"=>"ARS 29.99", "Stock"=>"false", "Amount"=>"0", "Name"=>"Basketball"}
# {"Category"=>"Electronics", "(Symbol) Price"=>"PEN 99.99", "Stock"=>"true", "Amount"=>"5", "Name"=>"iPod Touch"}
# {"Category"=>"Electronics", "(Symbol) Price"=>"USD 399.99", "Stock"=>"false", "Amount"=>"0", "Name"=>"iPhone 5"}
# {"Category"=>"Electronics", "(Symbol) Price"=>"PEN 199.99", "Stock"=>"true", "Amount"=>"2", "Name"=>"Nexus 7"}

p most_stocked(products)['Name'] # prints "Football"
# Total price in USD
p total_price(products) # prints 809.87
