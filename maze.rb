class Maze
    def find_position(num)
        row_index=@maze.each_index do |index|
            if @maze[index].include?(num)
                return [index,@maze[]]