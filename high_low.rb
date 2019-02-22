require_relative 'Card'
require_relative 'Deck'

@card 
 
class High_Low
  def initialize
    show_card
  end

  def show_card 
    deck = Deck.new
    deck.display_cards
    index = 1 + rand(52)
    @card = @cards[index]
    puts @card
  end
    
end


High_Low.new




