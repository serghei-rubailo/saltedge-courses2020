require_relative "./hand"

class Person
  attr_reader :name, :phone, :email, :hand
  def initialize(name, email, phone)
    @name = name
    @email = email
    @phone = phone
    @hand = Hand.new
  end

  def greet(other_person)
    puts "Hello #{other_person.name} I am #{@name}!"
  end
end