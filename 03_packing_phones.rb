# 1. If you're sitting next to the same person you sat next
#    to yesterday, go sit next to someone else.
#
# 2. A business called “The Company” created a new phone called 
#    the companyPhone that needs packing to send away for sale. 
#
#    The companyPhone in its pretty new packaging 
#    (rectangular prism) measures as follows: 
#       width: 5cm
#       length: 7.4cm 
#       depth: 4cm 
#
#    The Company need to know how many of the phones in
#    the new packaging can fit into a box that measures:
#       width: 32cm
#       length: 43cm 
#       height: 22.1cm 
#
#    Think about writing some pseudo code first that steps 
#    through all the commands you need to write. 
#
#    Keep it as simple as you can.

<<<<<<< HEAD
    # Array= [] storing the person name
    # like ={a,b,d,f,r,l}
    # if b next to a and d so sit next to someone else in array.

    # onepohevolume=5*7.4*4=148
    # total_volume=32*43*22.1=30409.6
    # across_the_width= 43/7.4 then change into integer=5
    # across_the_height=22.1/4 then change integer=5
    # across_the _lenght=32/5 then changes integer=6
    # number_of_box=6*5*5=150
    
    
      
   
=======
phone = [5, 7.4, 4]
box = [32, 43, 22.1]

max_phones = 0
phone.permutation do |orient|
    print orient
    puts
    num_phones = (box[0] / orient[0]).to_i * (box[1] / orient[1]).to_i * (box[2] / orient[2]).to_i
    max_phones = num_phones if num_phones > max_phones
end

puts max_phones
>>>>>>> 49cd331a6f04413e44494da396f192aa602e8ddb
