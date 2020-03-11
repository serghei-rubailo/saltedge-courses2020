require_relative "./classes/person"
require_relative "./classes/deck"

players = [Person.new('John', 'john@test.rs', '777-7777-777'), Person.new('Mike', 'mike@test.rs', '444-4444-444')]

players[0].greet(players[1])
players[1].greet(players[0])

first_player = players.sample
second_player = players.reject {|p| p == first_player}.first

puts "#{first_player.name} makes first move."

deck = Deck.new
deck.shuffle!

while deck.cards_count > 0 do 
	first_player_card = deck.draw
	second_player_card = deck.draw

	puts "#{first_player.name} gets #{first_player_card.point} #{first_player_card.suit}"
	puts "#{second_player.name} gets #{second_player_card.point} #{second_player_card.suit}"

	if first_player_card.point < second_player_card.point
		second_player.hand.add_card(first_player_card)
		second_player.hand.add_card(second_player_card)
		puts "#{second_player.name} takes cards!"
	elsif first_player_card.point > second_player_card.point	
		first_player.hand.add_card(first_player_card)
		first_player.hand.add_card(second_player_card)
		puts "#{first_player.name} takes cards!"
	else
		deck.return_card(first_player_card)
		deck.return_card(second_player_card)
		deck.shuffle!
		puts "Deck is shuffled!"
	end
end

if first_player.hand.get_points > second_player.hand.get_points
	puts "#{first_player.name} wins the game with #{first_player.hand.get_points} points"
	puts "#{second_player.name} loses the game with #{second_player.hand.get_points} points"
elsif first_player.hand.get_points < second_player.hand.get_points
	puts "#{second_player.name} wins the game with #{second_player.hand.get_points} points"
	puts "#{first_player.name} loses the game with #{first_player.hand.get_points} points"
else
	puts "Draw!"
	puts "#{first_player.name} has #{first_player.hand.get_points} points"
	puts "#{second_player.name} has #{second_player.hand.get_points} points"
end