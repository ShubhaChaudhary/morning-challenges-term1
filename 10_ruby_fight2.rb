require_relative'10_ruby_fight'
puts " welcome to the fight"
health =""
h=""
loop_end=''
 e=''
 e1=''
while e !=0 && e1 !=0
    puts " which player do you want to hit? 'A' or 'B' ? please enter" 
    players=gets.chomp
    p players
    case players
    when  "a" ,"A"
        player=Player.new("A",50)
    when "b","B"
        player=Player.new("B",25)
    end
    p "Your health is decreasing to"
    p player.fight(player)
    h=player.health   
    e=h[0]
    e1=h[1]
end
puts "Game over"