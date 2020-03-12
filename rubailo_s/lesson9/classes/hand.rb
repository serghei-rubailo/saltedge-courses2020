require_relative "./card"

class Hand
	attr_reader :array
  def initialize
    @array = []
  end

  def add_cards(*card)
  	card.each {|cr| @array << cr}
  end

  def get_points
    @array.sum { |card| card.point }
  end
end

ff = Hand.new
cc = Card.new(point: 1, suit: :hearts)
dd = Card.new(point: 2, suit: :hearts)

ff.add_cards(cc,dd)

print ff.get_points