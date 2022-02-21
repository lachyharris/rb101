computer_arr = ["rock", "paper", "scissors", "lizard", "spock"]

who_wins_hash = {
  rock: 'scissors', 'lizard',
  paper: 'rock', 'spock',
  scissors: 'paper', 'lizard',
  lizard: 'spock', 'paper',
  spock: 'rock', 'scissors'
}

def win?(player1, player2)
  
end

puts "Let's play a game of rock paper scissors!"
sleep(1)
puts "What is your first name?"
user_name = gets.chomp.capitalize
user_choice = ''
computer_choice = ''
play_again = ''
user_count = 0
computer_count = 0
loop do
  loop do
    puts "Please choose between rock, paper and scissors."
    user_choice = gets.chomp.downcase
    break if user_choice == 'rock' || 'paper' || 'scissors'
    puts "That is an invalid choice."
  end

  computer_choice = computer_arr.sample

  if win?(user_choice, computer_choice)
    puts "You won!"
    user_count += 1
  elsif win?(computer_choice, user_choice)
    puts "You lost!"
    computer_count += 1
  else
    puts "It was a draw!"
  end

  puts "Scoreboard: "
  puts "#{user_name}: #{user_count}"
  puts "Computer: #{computer_count}"
  puts "Would you like to play again? Type yes to play again."
  play_again = gets.chomp.downcase
  break unless play_again == 'yes'
end

if computer_count > user_count
  puts "Thanks for playing #{user_name}, better luck next time!"
elsif computer_count < user_count
  puts "Thanks for playing #{user_name}, I will get you next time!"
else
  puts "Thanks for playing #{user_name}, we are of equal skill!"
end
