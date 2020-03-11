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