require_relative "./card"

class Deck
  def initialize
    @cards = Card::SUITS.each_with_object([]) do |suit, cards|
      Card::POINTS.each do |point|
        cards << Card.new(point: point, suit: suit)
      end
    end
  end

  def cards_count
    @cards.count
  end

  def draw
    @cards.shift
  end

  def shuffle!
    @cards.shuffle!
  end

end