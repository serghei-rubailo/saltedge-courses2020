class Card
  SUITS = %i(diamonds clubs hearts spades)
  POINTS = 1..13

  attr_reader :point, :suit
  def initialize(point:, suit:)
    unless POINTS.to_a.include?(point)
      raise RuntimeError.new("points should be between #{POINTS}")
    end
    unless SUITS.include?(suit)
      raise ArgumentError.new("suit should be one of#{SUITS}")
    end
    @point = point
    @suit  = suit
  end
end