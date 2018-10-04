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
