class High_low

    # attr_accessor :playagain

def initialize
puts "Welcome to a game of High-Low."
@playagain = "y"
end

def play_game
    while @playagain == "y"
        win = false
        randNum = rand(52) + 1
        puts "Please enter a number (1-52) or type -1 to exit: "
        while !win
            guessedNumber = gets.to_i
            if guessedNumber == -1 then
                break

            elsif guessedNumber > randNum then
                puts "Too high, try again."
            elsif guessedNumber < randNum then
                puts "Too low, try again."
            else
                puts "You win!"
                win = true
            end
        end

    puts "Want to play again? (y/n)"
    @playagain = gets.chomp!
    puts "Thanks for playing!"
    end
end


game = High_low.new
game.play_game


end
