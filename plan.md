## Player

TO BE INITIALIZED:
 -name
 -lives
 
# METHODS:
  -lose_life

## Question
- The question class will calculate and generate the math questions and answers.

TO BE INITIALIZED:
  - num 1
  - num 2
  - answer
  


# METHODS:
- ask_question(player)
  - display question to user
  - User input for answer
  - check answer against question's answer
  - if input == answer display 'correct'
  - if input != answer, call lose_life && display incorrect
  

## Game
- The winner class will take input from the answers to the questions to determine which of the two players scored the most points and who is the winner.

TO BE INITIALIZED:
  - player 1
  - player 2
  
# METHODS:
  - start
    -initialize question
    -ask question to starting player
    -after answer from player, start next turn by looping back to begining and changing starting player
    -determine if the game ends.
    -determine winner
  - end
    -check if player is out of lives
  - determin_winner
  