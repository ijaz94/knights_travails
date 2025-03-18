class Knight
  # Possible moves a knight can make
  MOVES = [
    [1, 2], [2, 1],
    [2, -1], [1, -2],
    [-1, -2], [-2, -1],
    [-2, 1], [-1, 2]
  ].freeze

  def initialize
    @board_size = 8
  end

  # Check if a position is within the bounds of the chessboard
  def valid_position?(x, y)
    x.between?(0, @board_size - 1) && y.between?(0, @board_size - 1)
  end

  # Find the shortest path using BFS
  def knight_moves(start, target)
    queue = [[start, [start]]]  # Queue stores [current_position, path]
    visited = [start]           # Track visited positions to avoid cycles

    until queue.empty?
      current, path = queue.shift  # Dequeue the first element

      # Return the path if the target is reached
      return path if current == target

      # Generate all possible moves from the current position
      MOVES.each do |dx, dy|
        new_x = current[0] + dx
        new_y = current[1] + dy
        new_position = [new_x, new_y]

        # Enqueue the new position if it's valid and not visited
        if valid_position?(new_x, new_y) && !visited.include?(new_position)
          visited << new_position
          queue << [new_position, path + [new_position]]
        end
      end
    end

    nil  # Return nil if no path is found (should not happen on a chessboard)
  end
end

