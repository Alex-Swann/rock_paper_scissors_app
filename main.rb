require 'sinatra'
require 'json'

get '/' do
	erb :home_page
end

# post '/' do 
# 	human_choice = params[:choice]
# end

get '/play' do
	play params[:choice]
	erb :play
end

def play hc
	@human_choice = hc
	@computer_choice = ["rock", "paper", "scissors"].sample
	@victory = @defeat = @tie = false

	if @computer_choice == @human_choice
		# return "The result is a tie!"
		return @tie = true
	else
		case @human_choice
		when 'rock'
			if @computer_choice == 'scissors'
				# return "You win!"
				return @victory = true
			else
				# return  "Computer wins!"
				return @defeat = true
			end
		when 'paper'
			if @computer_choice == 'rock'
				# return  "You win!"
				return @victory = true
			else
				# return "Computer wins!"
				return @defeat = true
			end
		when 'scissors'
			# if @computer_choice == 'paper'
			return @victory = true
			return  "You win!"
		else
			# return "Computer wins!"
			return @defeat = true
		end

	end
end
