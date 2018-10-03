class Card
    def initialize(suit, rank)
        @ suit= suit
        @rank = rank
    end
    
    def face_card?
    face_card=[10,'J','Q','K','A']
    face_card.include? @ rank 
    p"card is face_card"
    else
    p " card is not a face_card" 
    end
    def to_s
        # Return human readable card
    end
end

my_card=Card.new("spade","A")
p my_card.face_card