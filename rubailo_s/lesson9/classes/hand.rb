require_relative "./card"

class Hand
  def initialize
    @array = []
  end

  def add_card(card)
    @array << card
  end

  def get_points
    @array.sum { |card| card.point }
  end
end

hand = Hand.new
hand.add_card(Card.new(point: 3, suit: :clubs))
hand.add_card(Card.new(point: 13, suit: :hearts))
puts hand.get_points
