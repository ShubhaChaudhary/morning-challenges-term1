    # onepohevolume=5*7.4*4=148
    # total_volume=32*43*22.1=30409.6
    # across_the_width= 43/7.4 then change into integer=5
    # across_the_height=22.1/4 then change integer=5
    # across_the _lenght=32/5 then changes integer=6
    # number_of_box=6*5*5=150

    # width = 43/7.4
    #  p = width.to_i
    # height =22.1/4
    #  h =height.to_i
    # lenght =32/5
    #   l=lenght.to_i
    # puts "number of mobile fit in the box : #{p*h*l} "

    phone = [5, 7.4, 4]
    box = [32, 43, 22.1]
    
    max_phones = 0
    phone.permutation do |orient|
        print orient
        puts
        num_phones = (box[0] / orient[0]).to_i * (box[1] / orient[1]).to_i * (box[2] / orient[2]).to_i
        puts num_phones
        max_phones = num_phones if num_phones > max_phones
    end
    
    puts max_phones
    