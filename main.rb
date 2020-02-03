require "./player"
require "./math_question"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
player1_life = player1.get_life()
player2_life = player2.get_life()
player1_name = player1.get_name()
player2_name = player2.get_name()
turn = player1.get_name;

puts("--NEW TURN--")
puts("#{turn} choose a number between 1 and 20")
number1 = gets.chomp
puts("#{turn} choose another number between 1 and 20")
number2 = gets.chomp
question = Question.new(number1, number2)

# while (player1_life > 0 && player2_life > 0)
#   break
# end

if (player1_life > 0)
  puts ("#{player1.get_name} wins with a score of #{player1.get_life}/3")
end

if (player2_life > 0) 
  puts ("#{player2.get_name} wins with a score of #{player2.get_life}/3")
end