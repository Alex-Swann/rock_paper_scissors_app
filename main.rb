require 'sinatra'

get '/' do
	erb :home_page
end

post "/" do
	p play params[:human_choice].downcase
end

def play human_choice
	computer_choice = ["rock", "paper", "scissors"].sample

	if computer_choice == human_choice
		return "The result is a tie!"
	else
		case human_choice
		when 'rock'
			if computer_choice == 'scissors'
				return "You win!"
			else
				return  "Computer wins!"
			end
		when 'paper'
			if computer_choice == 'rock'
				return  "You win!"
			else
				return "Computer wins!"
			end
		when 'scissors'
			if computer_choice == 'paper'
				return  "You win!"
			else
				return "Computer wins!"
			end
		else
			return "Entry not valid. Please enter rock, paper or scissors!"
		end
	end
end
