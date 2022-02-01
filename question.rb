class question
  
  num1 = rand(1..20)
  num2 = rand(1..20)
  answer = num1 + num2
  
  
  def ask_question(player)
    puts "What is #{num1} + #{num2} ?"
    
    if gets.chomp != answer
    incorrect
  end
  
  def incorrect
    #player.lives -= 1
  end
  
  
end