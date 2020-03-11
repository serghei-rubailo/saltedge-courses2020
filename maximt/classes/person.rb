class Person
  attr_reader :name, :phone, :email
  def initialize(name, email, phone)
    @name = name
    @email = email
    @phone = phone
  end

  def greet(other_person)
    puts "Hello #{other_person.name} I am #{@name}!"
  end
end

sonny = Person.new("Sonny", "sonny@hotmail.com", "4343142")
jordan = Person.new("Jordan", "jordan@aol.com", "4954442")

sonny.greet(jordan)
jordan.greet(sonny)

puts "Sonny's phone: #{sonny.phone}, email: #{sonny.email}"
puts "Jordan's phone: #{jordan.phone}, email: #{jordan.email}"
