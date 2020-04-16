contacts = {
  ricardo: 987654321,
  alex: 987321654,
}

puts "What would you like to do?"
puts "-- Type 'add' to add a contact."
puts "-- Type 'update' to update a contact."
puts "-- Type 'display' to display all contacts."
puts "-- Type 'delete' to delete a contact."
command = gets.chomp
puts "--"

case command
when 'add'
  print "Contact's name? "
  name = gets.chomp.downcase.to_sym
  print "Contact's phone number? "
  phone = gets.chomp.to_i
  if contacts[name] == nil
    contacts[name] = phone
    puts 'Contact has been added.'
  else
    puts 'Error: Contact already exists.'
  end

when 'update'
  print "Contact's name? "
  name = gets.chomp.downcase.to_sym
  if contacts[name] == nil
    puts 'Error: Contact does not exist.'
  else
    print "Contact's phone number? "
    phone = gets.chomp.to_i
    contacts[name] = phone
    puts 'Contact has been updated.'
  end

when 'display'
  puts 'LIST OF CONTACTS'
  contacts.each { |name, phone| puts "#{name.capitalize}: #{phone}" }

when 'delete'
  print "Contact's name? "
  name = gets.chomp.downcase.to_sym
  if contacts[name] == nil
    puts 'Error: Contact does not exist.'
  else
    contacts.delete(name)
    puts 'Contact has been deleted.'
  end

else
  puts "Error: Command '#{command}' not found"
end
