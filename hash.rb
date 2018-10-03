# A group of friends have just finished lunch. Write an app to work out how much each person owes.
# Parameters:
# - Your app should ask "Enter a customer's name"
# - Your first line of code is:
# items = [{ customer: "John", item: "Soup", cost: 8.50}, {customer: "Sarah", item: "Pasta", cost: 12}, {customer: "John", item: "Coke", cost: 2.50}]
# - Your app should output, for example: "John owes $11.0"

# Bonus:

# Format your total so it always shows two deciaml places, e.g. $11.00
# The list of items makes our code messy. Instead, see if you can read the items from a file. (Google will help here!)
# Allow items to be added to the list. E.g. "Press 1 to add items, press 2 to work out a total".
# Store these new items to the file

orders=[]
continue='y'
while (continue =="Y" || continue=="y")
    order= {customer:'',item:'',cost:''}
    puts "Please place your order with your name"
    order[:customer]=gets.chomp
    item=gets.chomp
    order[:item]=item
    case item
    when "soup" 
        cost =8.50
    when "pasta"
        cost = 12.0
    when "cake"
        cost =2.50
    else 
        "we don't have the item!"
    end 
    order[:cost]=cost
    p order
    puts "you or your friend would like to order something else,Y/N"
    continue=gets.chomp
        orders << order 
end  
p orders 
    # items = [{ customer: "John", item: "Soup", cost: 8.50}, {customer: "Sarah", item: "Pasta", cost: 12}, {customer: "John", item: "Coke", cost: 2.50}]
     puts " who would like to pay please enter "
    name=gets.chomp

     p orders.select!{|hash| hash[:customer]==name}
    cost = orders.inject(0){|total_cost, hash| total_cost + hash[:cost]}
    puts "#{name} you have to pay $ #{'%.2f' %cost}"
    