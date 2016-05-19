
@computer_choice = ["rock", "paper", "scissors"].sample 

if @computer_choice == @human_choice
  @result = "The result is a tie!"
elsif @human_choice == 'rock'
  if @computer_choice == 'scissors'
    @result = "You win!"
  else
    @result =  "Computer wins!"
  end
elsif @human_choice == 'paper'
  if @computer_choice == 'rock'
    @result =  "You win!"
  else
    @result = "Computer wins!"
  end
elsif @human_choice == 'scissors'
  if @computer_choice == 'paper'
    @result =  "You win!"
  else
    @result = "Computer wins!"
  end
else
  @result = "Entry not valid. Please enter rock, paper or scissors!"
end 