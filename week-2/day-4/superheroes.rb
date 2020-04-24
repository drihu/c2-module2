require 'json'

def display_data(filename)
  file_content = File.read(filename)
  data = JSON.parse(file_content)
  puts "Our squad is called #{data['squadName']}"
  puts "We are from #{data['homeTown']}"
  puts "Our team started back in #{data['formed']}"
  puts "Our member are:"
  data['members'].each do |member|
    puts "- #{member['name']}"
    puts "  - Age: #{member['age']}"
    puts "  - Superpowers: #{member['powers'].join(', ')}"
  end
end

display_data('data.json')
# Our squad is called Super hero squad
# We are from Metro City
# Our team started back in 2016
# Our member are:
# - Molecule Man
#   - Age: 29
#   - Superpowers: Radiation resistance, Turning tiny, Radiation blast
# - Madame Uppercut
#   - Age: 39
#   - Superpowers: Million tonne punch, Damage resistance, Superhuman reflexes
