class Maze
    @@START_POSTION=2
    @@END_POSITION=3
    attr_reader :start_row
    def initialize(maze)
        @maze=maze
        @start_row=start.first
        @start_col=start.last
    end
    def walk(moves)
        for move in moves
            @current_move_check=make_move(move)
            value= @current_move_check >= 0 ? @maze[@start_row][@start_col] : nil
            case value    
            when 1,nil
             return p 'dead'
            when 3
              return p 'finish' 
            end
        end
        'lost'
    end    

def can_move?
    make_move(direction)
end    
def make_move(direction)
    @direction= direction
    case @direction
    when "N"
        @start_row -=1
    when "S" 
        @start_row +=1
    when "E"
        @start_col +=1
    when "W"
        @start_col-=1
    end
end   

protected

def start
    @position=[]
    @@START_POSTION
    @maze.each_index do |index|  
        if  @maze[index].include?@@START_POSTION 
            @position << index<<@maze[index].index(@@START_POSTION)  
        end
    end
    return @position 
end
end    

maze=Maze.new( [[1,1,1,1,1,1,1],
    [1,0,0,0,0,0,3],
    [1,0,1,0,1,0,1],
    [0,0,1,0,0,0,1],
    [1,0,1,0,1,0,1],
    [1,0,0,0,0,0,1],
    [1,2,1,0,1,0,1]])
    p maze.start_row
    maze.walk(["N","N","N","W","W"])   
    
    