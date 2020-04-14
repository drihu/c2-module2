br_price = {
  'vanilla' => 0.5,
  'chocolate' => 0.75,
  'red velvet' => 0.85,
}

fr_price = {
  'vanilla' => 0.6,
  'oreo' => 1.1,
  'mint chocolate' => 1.45,
}

fi_price = {
  '' => 0.0,
  'nutella' => 1.0,
  'strawberry' => 0.55,
  'peanut butter' => 0.45,
}

print 'How many cupcakes are wanted: '
number_of_cupcakes = gets.chomp.to_i

print 'Bread: '
bread = gets.chomp.downcase

print 'Forsting: '
frosting = gets.chomp.downcase

print 'Filling: '
filling = gets.chomp.downcase
filling = filling.empty? ? '' : filling

price = number_of_cupcakes * (br_price[bread] + fr_price[frosting] + fi_price[filling])

if number_of_cupcakes >= 12
  price *= 0.96
elsif number_of_cupcakes >= 6
  price *= 0.9
end

puts price
