require "./player"
require "./math_question"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
player1_name = player1.get_name()
player2_name = player2.get_name()
turn = player1.get_name
otherPlayer = player2.get_name

while (player1.get_life > 0 && player2.get_life > 0)
  puts("--NEW TURN--")
  puts("#{turn} choose a number between 1 and 20")
  number1 = gets.chomp
  puts("#{turn} choose another number between 1 and 20")
  number2 = gets.chomp
  question = Question.new(number1, number2)
  solution = question.attr_reader(turn)
  answer = gets.chomp
  if (answer.to_i == solution.to_i)
    puts "#{turn}: Yes! Correct!"
  else 
    puts "#{turn}: No! You are wrong! haha"
    if (otherPlayer == player2.get_name)
      player2.lost_life()
    else
      player1.lost_life()
    end
  end
  puts "P1: #{player1.get_life}/3 vs P2: #{player2.get_life}/3"
  if (turn == player1.get_name)
    turn = player2.get_name
    otherPlayer = player1.get_name
  else 
    turn = player1.get_name
    otherPlayer = player2.get_name
  end
end

if (player1.get_life > 0)
  puts ("#{player1.get_name} wins with a score of #{player1.get_life}/3")
else
  puts ("#{player2.get_name} wins with a score of #{player2.get_life}/3")
end