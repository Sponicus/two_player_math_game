class Question
  
  attr_reader :num1, :num2, :answer
  
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = num1 + num2
  end
  
  def ask_question(player)
    puts "What is #{num1} + #{num2} ?"
    
    if gets.chomp != answer
      incorrect(player)
    end
    
  end
  
  def incorrect(player)    
    player.lose_life
  end
  
end