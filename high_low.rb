require 'colorize'
require_relative 'person'

class High_low

    attr_accessor :person

   
 def initialize
    @person = person
    puts "Welcome to a game of High-Low.".magenta
    @playagain = "y"
    play_game
 end
end

def play_game
    while @playagain == "y"
        win = false
        randNum = rand(52) + 1
        puts "Please enter a number (1-52) or type -1 to exit: ".cyan
        while !win
            guessedNumber = gets.to_i
            if guessedNumber == -1 then
                break

            elsif guessedNumber > randNum then
                puts "Too high, try again.".red
            elsif guessedNumber < randNum then
                puts "Too low, try again.".red
            else
                puts "You win!".green
                win = true
            end
        end

    puts "Want to play again? (y/n)".blue
    @playagain = gets.chomp!
    puts "Thanks for playing!".yellow
    end
end


game = High_low.new



