require_relative "./classes/person"
require_relative "./classes/deck"

players = [Person.new('John', 'john@test.rs', '777-7777-777'), Person.new('Mike', 'mike@test.rs', '444-4444-444')]

players[0].greet(players[1])
players[1].greet(players[0])

# randomly select who will be the first and second player
first_player, second_player = players.shuffle

puts "#{first_player.name} makes first move."

deck = Deck.new
deck.shuffle!

while deck.cards_count > 0 do 
	first_player_card = deck.draw
	second_player_card = deck.draw

	puts "#{first_player.name} gets #{first_player_card.point} #{first_player_card.suit}"
	puts "#{second_player.name} gets #{second_player_card.point} #{second_player_card.suit}"

	round_winner = if first_player_card.point > second_player_card.point
		first_player
	elsif first_player_card.point < second_player_card.point
		second_player
	end

	if round_winner
		round_winner.hand.add_cards(first_player_card,second_player_card)
		puts "#{round_winner.name} takes cards!"
	else
		first_player.hand.add_cards(first_player_card)
		second_player.hand.add_cards(second_player_card)
		deck.shuffle!
		puts "Cards are given to Players! Deck is shuffled!"
	end
end

game_winner = if first_player.hand.get_points > second_player.hand.get_points
	first_player
elsif first_player.hand.get_points < second_player.hand.get_points
	second_player
end

if game_winner
	puts "#{game_winner.name} wins the game with #{game_winner.hand.get_points} points"
else
	puts "Draw!"
	puts "Both players have #{first_player.hand.get_points} points"
end