## Classes
- Math Game
  - Main class, holds structure of game, game loop (alternates players turns)
  - defines structure, creates new players, new turns, and new questions
  - I/O?
    - no
- Player 
  - id: 1, 2
  - tracks life total, keeps track of current_player
  - I/O?
    - no
## Methods
- Turn
  - calls for new question
  - includes checking for game over (no lives left)?
  - I/O?
    - no
- Question
  - calls two random numbers from 1 to 20
  - asks current player question
  - checks answer
  - I/O?
    - YES
- Game Over
  - called when a player has no lives left
  - ends the game
  - I/O?
    - no