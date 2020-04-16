class Contact
  attr_reader :name
  attr_reader :phone
  def initialize(name, phone)
    @name = name
    @phone = phone
  end
end

class ContactBook
  @@hash_of_contacts = {
    ricardo: 987654321,
    alex: 987321654,
  }

  def self.has_contact?(contact_name)
    @@hash_of_contacts.each do |name, phone|
      return true if name == contact_name
    end
    return false
  end

  def self.add_contact(new_contact)
    @@hash_of_contacts[new_contact.name] = new_contact.phone
  end

  def self.display_contacts
    @@hash_of_contacts.each do |name, phone|
      puts "- #{name.capitalize}: #{phone}"
    end
  end

  def self.delete_contact(contact_name)
    @@hash_of_contacts.delete(contact_name)
  end
end

puts "What would you like to do?"
puts "-- Type 'add' to add a contact."
puts "-- Type 'update' to update a contact."
puts "-- Type 'display' to display all contacts."
puts "-- Type 'delete' to delete a contact."
puts "--"
command = gets.chomp
puts "--"

case command
when 'add'
  print "Contact's name? "
  name = gets.chomp.downcase.to_sym
  print "Contact's phone number? "
  phone = gets.chomp.to_i
  new_contact = Contact.new(name, phone)
  if ContactBook.has_contact?(name)
    puts 'Error: Contact already exists.'
  else
    ContactBook.add_contact(new_contact)
    puts "Contact #{new_contact.name} has been added."
  end

when 'update'
  print "Contact's name? "
  name = gets.chomp.downcase.to_sym
  print "Contact's phone number? "
  phone = gets.chomp.to_i
  new_contact = Contact.new(name, phone)
  if ContactBook.has_contact?(name)
    ContactBook.add_contact(new_contact)
    puts "Contact #{new_contact.name} has been updated."
  else
    puts 'Error: Contact not found.'
  end

when 'display'
  puts 'List of contacts'
  ContactBook.display_contacts

when 'delete'
  print "Contact's name? "
  name = gets.chomp.downcase.to_sym
  if ContactBook.has_contact?(name)
    ContactBook.delete_contact(name)
    puts 'Contact has been deleted.'
  else
    puts 'Error: Contact not found.'
  end
  ContactBook.display_contacts

else
  puts "Error: Command '#{command}' not found"
end
