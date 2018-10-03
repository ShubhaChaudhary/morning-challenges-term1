# You get any card as an argument. Your task is to return a suit of this card.

# eg:

# ('3C') -> return 'clubs'
# ('3D') -> return 'diamonds'
# ('3H') -> return 'hearts'
# ('3S') -> return 'spades'

def define_suit(card)
  s = card
 suit= s.split(//).last.downcase
case suit
when 'c'
  p 'clubs'
when 'd'
  p 'diamonds'
when 'h'
  p 'hearts'
when 's'
  p 'spades'
# else
#   p 'quit'
end   
end

define_suit('3S')
