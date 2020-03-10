# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
class Person
  def initialize(name, email, phone)
    @name = name
    @email = email
    @phone = phone
  end

  def greet(other_person)
    puts "Hello #{other_person.name} I am #{@name}!"
  end
end
# Write code to

# 1. Instantiate an instance object of Person with name of 'Sonny', email of 'sonny@hotmail.com', and phone of '483-485-4948', store it in the variable sonny.
# 2. Instantiate another person with the name of 'Jordan', email of 'jordan@aol.com', and phone of '495-586-3456', store it in the variable 'jordan'.
# 3. Have sonny greet jordan using the greet method.
# 4. Have jordan greet sonny using the greet method.
# 5. Write a statement to print the contact info (email and phone) of Sonny.
# 6. Write another statement to print the contact info of Jordan.



# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # # EXERCISE 2 # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Create a class Card. A card object will have 2 properties:

# point - the point value of the card: a number between 1 and 13. suit - the suit of the card: one of diamonds, clubs, hearts and spades.

# A card will be created thus:
#
my_card = Card.new(point: 5, suit: :diamonds)
# And you can access the individual properties like:
my_card.point # => 5
my_card.suit # => :diamonds



# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # # EXERCISE 3 # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Hand constructor
# A hand is simply represented as a collection of cards, but it would also be convenient for a hand to be able to return it's point value. We would like to be able to do this with a Hand constructor:
hand = Hand.new
hand.add_card(Card.new(point: 3, suit: :clubs))
hand.add_card(Card.new(point: 13, suit: :hearts))
hand.get_points # => 16

# Implement a Hand class that will allow the code above to work


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # # EXERCISE 4 # # # # # # # # # # # # # # # # # # # # # # # # # # #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Deck constructor
# A deck is also represented as a collection of cards, but it would also be convenient for it to be able to shuffle itself, and be asked to draw a card. We would like to be able to do this with a Deck constructor:
deck = Deck.new
deck.draw # => Card instance: point=3, suit=clubs
deck.draw # => another Card instance: point=13, suit=hearts
deck.shuffle! # => changes order of the left cards
deck.cards_count # => 52


# Combine all together. Your homework

# 1. Link hand to person
# 2. Write a kind of "PYANITSA" game
# 3. People should greet each other.
# 4. Decide who will start the game randomly
# 5. Each person takes a card from the deck
# 6. Cards are compared: the person who's card is greater takes both
# 7. If cards are equal then cards go back to the deck and deck is shuffled
# 8. Wins the one who has more points on the hand when deck becomes empty
