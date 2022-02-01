require './player.rb'
class Question
  
  attr_reader :num1, :num2, :answer
  
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = num1 + num2
  end
  
  def ask_question(player)
    puts "#{player.name}: What is #{num1} + #{num2} ?"
    puts @answer
    reply = gets.chomp.to_i
    if reply != @answer
      incorrect(player)
      puts 'Incorrect!'
    else
      puts 'Correct!'
    end
    
  end
  
  def incorrect(player)    
    player.lose_life
  end
  
end