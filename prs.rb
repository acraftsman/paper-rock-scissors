require "pry"

CHOICES = {'p' => 'paper', 'r' => 'rock', 's' => 'scissors'}
puts "welcome to paper-rock-scissors"
def all_picked(player_choice,computer_choice)
  puts "You picked #{player_choice}, Computer picked #{computer_choice}"
end
def display_winner_msg(winner_choice)
  case winner_choice
  when 'p' 
    puts "Paper wraps rock!"
  when 'r'
    puts "Rock smashes scissors!"
  when 's'
    puts "scissors cuts paper!"
  end
end
loop do
  begin
    puts "Pick one: (p/r/s)"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)
  computer_choice = CHOICES.keys.sample  
  if player_choice == computer_choice
    all_picked(player_choice,computer_choice)
    puts "It's a tie"
  elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
    all_picked(player_choice,computer_choice)
    display_winner_msg(player_choice)
    puts "you won!"
  else
    all_picked(player_choice,computer_choice)
    display_winner_msg(computer_choice)
    puts "Computer won!"
  end
  puts "play again? (y/n)"
  break if gets.chomp.downcase != 'y'
end
puts "Good bye!"