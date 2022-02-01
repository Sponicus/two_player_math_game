class Game
    
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @player_turn = @player1
  end
    
  def play_game
    #loop through until someone loses.
    while @player_turn.lives > 0 do
      #ask a question to a player
      "#{Question.new.ask_question(@player_turn)}"
      puts "P1: #{@player1.lives}/3 VS P2: #{@player2.lives}/3"
      #check if game ends
      if @player_turn.lives == 0
        puts "#{@player_turn.name} loses the game!"
        return
      end
            
      #change who's turn it is
      if @player_turn.name == @player1.name
        @player_turn = @player2
      else
        @player_turn = @player1
      end
      
      puts "----- NEW TURN -----"
      
      
    end    
  end
  
end