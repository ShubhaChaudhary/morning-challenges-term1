class Maze
<<<<<<< HEAD
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
=======
    # List of valid moves, each mapped to a row and column offset hash
    # eg. moving north means going up one row (-1 rows, 0 columns) in the maze array
    @@valid_moves = {
        'N': { row: -1, col: 0 },
        'S': { row: 1, col: 0 },
        'E': { row: 0, col: 1 },
        'W': { row: 0, col: -1 }
    }

    def initialize(maze)
        @maze = maze
        # Find the start location (element with value 2)
        # First find the row that includes the value 2
        start_row = maze.find { |row| row.include?(2) }
        # Construct player position hash from column and row indexes
        @player_position = { col: start_row.index(2), row: maze.index(start_row) }
    end
    def walk(moves)
        for move in moves do
            # Convert move to symbol so we can use it to reference @@valid_moves
            move = move.to_sym
            # Ignore invalid moves
            if @@valid_moves[move]
                # Adjust the player position according to the direction moved
                @player_position[:col] += @@valid_moves[move][:col]
                @player_position[:row] += @@valid_moves[move][:row]
                # Get the value at the new location in the maze
                # This will fail if we're outside the maze, triggering the rescue clause
                value = @maze[@player_position[:row]][@player_position[:col]]
                # Hit a wall?
                return 'Dead' if value == 1
                # Reached the exit?
                return 'Finish' if value == 3
            end
        end
        # If we didn't finish or die, then we're lost!
        'Lost'
    rescue
        'Dead'
>>>>>>> 19cb0abbbb65d615711988564ae54d46d1ac4129
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
    
    