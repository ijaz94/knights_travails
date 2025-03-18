require_relative 'lib/knights_travails'

# Create a new knight and find the shortest path
knight = Knight.new
start = [0, 0]
target = [7, 7]
path = knight.knight_moves(start, target)

if path
  puts "You made it in #{path.size - 1} moves! Here's your path:"
  path.each { |position| p position }
else
  puts "No path found."
end