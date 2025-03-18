# Knight's Travails in Ruby

This repository contains a Ruby implementation of the **Knight's Travails** problem. The goal is to find the shortest path for a knight to move from a starting position to a target position on a chessboard. The solution uses a **breadth-first search (BFS)** algorithm to guarantee the shortest path.

---

## Table of Contents
1. [Overview](#overview)
2. [How It Works](#how-it-works)
3. [Usage](#usage)
4. [Example](#example)
5. [Performance](#performance)
6. [Customization](#customization)
7. [Contributing](#contributing)
8. [License](#license)

---

## Overview

The Knight's Travails problem involves finding the shortest sequence of moves for a knight to travel from a starting position to a target position on a standard 8x8 chessboard. A knight moves in an "L"-shape: two squares in one direction (horizontal or vertical) and then one square perpendicular to that.

This implementation uses a **breadth-first search (BFS)** algorithm to explore all possible moves and find the shortest path.

---

## How It Works

### Key Components
1. **Knight Moves**:
   - The knight has 8 possible moves, defined in the `MOVES` array.

2. **Chessboard Constraints**:
   - The `valid_position?` method ensures that the knight does not move outside the bounds of the chessboard.

3. **Breadth-First Search (BFS)**:
   - The `knight_moves` method uses BFS to explore all possible moves level by level.
   - The `queue` stores the current position and the path taken to reach that position.
   - The `visited` array keeps track of positions that have already been explored to avoid cycles.

4. **Path Construction**:
   - When the target position is reached, the method returns the path taken to get there.
   - Each move is added to the path, ensuring the shortest sequence of moves.

---

## Usage

To use the Knight's Travails implementation, follow these steps:

1. **Clone the repository** or copy the code into your Ruby project.
2. **Create an instance** of the `Knight` class:
   ```ruby
   knight = Knight.new
   ```
3. **Call the `knight_moves` method** with the starting and target positions:
   ```ruby
   start = [0, 0]
   target = [7, 7]
   path = knight.knight_moves(start, target)
   ```
4. **Print the path**:
   ```ruby
   if path
     puts "You made it in #{path.size - 1} moves! Here's your path:"
     path.each { |position| p position }
   else
     puts "No path found."
   end
   ```

---

## Example

### Input
```ruby
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
```

### Output
```
You made it in 6 moves! Here's your path:
[0, 0]
[1, 2]
[2, 4]
[3, 6]
[4, 4]
[5, 6]
[7, 7]
```

---

## Performance

- **Time Complexity**: **O(n)**, where `n` is the number of squares on the chessboard (64 in this case).
- **Space Complexity**: **O(n)**, due to the queue and visited array.

---

## Customization

- **Chessboard Size**:
  - Modify the `@board_size` variable to solve the problem for larger or smaller boards.

- **Different Pieces**:
  - Change the `MOVES` array to simulate different types of pieces (e.g., a king, queen, or custom piece).

---

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Enjoy solving the Knight's Travails problem in Ruby! 🚀