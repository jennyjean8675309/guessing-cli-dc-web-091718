require 'pry'

def guessing_game_start
  puts "Guess a number between 1 and 6."
end

def exit_game
  puts "Goodbye!"
end

def run_guessing_game
  user_input = nil
  until (user_input == "exit")
  guessing_game_start
  computer_guess = rand(1..6).to_s
  user_input = gets.chomp
    if user_input == computer_guess
      puts "You guessed the correct number!"
    elsif user_input == "exit"
      exit_game
      break
    else
      puts "The computer guessed #{computer_guess}."
      puts "Please try again."
    end
  end
end