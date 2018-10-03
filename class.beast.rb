class Walk
    attr_accessor :distance ,:when 
    def initialize(distance,location)
        @distance=distance
        @location=location
        @when=Time.now
    end
end        
class Dog
    attr_accessor :walk,:display_walk,:total_distance
    def initialize (name)
        @name= name
        @walk =0
        @walk_details=[]
        @total_distance= 0
    end
    def walk(location,distance)
        @walk +=1
        @location=location
        @distance= distance
       @walk_details<< Walk.new(location,distance)
        self
    end
    def display_walk
        "#{@name} has been for #{@walk}walks in #{@location}" 
    end
    def total_distance
        @total_distance +=@distance
    end
end     
    dog1=Dog.new("lassei") 
     dog1.walk('Brisbane',20)
     dog1.walk('Brisbane',20)
    p dog1.display_walk 
    p dog1.total_distance 