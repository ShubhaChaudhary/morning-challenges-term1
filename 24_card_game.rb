<<<<<<< HEAD
class Card
    def initialize(suit, rank)
        @suit= suit
        @rank = rank
    end
    def face_card
     ['J','Q','K'].include?(@rank)
    end  
    
    def to_string
     " #{@rank} of #{@suit}"
    end
end

my_card=Card.new("spades",'10')
if my_card.face_card == true
p "Card is face_card"
else 
p "card is not a face_card"
end
 p my_card.to_string
=======
 class Card
  include Comparable
  
  attr_accessor :suit, :rank, :rank_names 
  
  def initialize(suit, rank)
    # Create a new card
    @suit = suit
    @rank = rank
    @rank_names = {
      '1': 'Ace',
      '11': 'Jack',
      '12': 'Queen',
      '13': 'King'
    }    
  end

  def face_card?
    # Is the card a face card (above 10)?
    @rank > 10
  end

  def <=>(other)
    @rank <=> other.rank
  end
  
  def to_s
    # Return human readable card
    rank = @rank_names[@rank.to_s.to_sym] || @rank.to_s
    suit = @suit.to_s
    suit[0] = suit[0].upcase
    "#{rank} of #{suit}"
  end
end
>>>>>>> e3f9f4e73af2083c93337490ff8271225687f885
