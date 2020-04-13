R = 8.314

print "Chemical Amount: "
chemical_amount = gets.chomp.to_f

print "Temperature: "
temperature = gets.chomp.to_f

print "Volume: "
volume = gets.chomp.to_f

def calculate_pressure(chemical_amount, temperature, volume)
  return R * temperature * chemical_amount / volume
end

puts calculate_pressure(5, 500, 2) # Returns 10392.5
