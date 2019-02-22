require_relative 'Dice'


class Dice_game

  def initialize
    make_guess
  end

  def make_guess
    puts "Guess the sum of rolling 2 dice"
    guess = gets.to_i
    # puts "Roll the dice y/n?"
    # input = gets.chomp.to_str
    # if input == "y"
    #   roll_dice
    #   result(guess, result)
    # else
    #   exit
    # end
    roll_dice
  end

  def roll_dice #need to sum the two dice and save as answer
    puts "Roll the Dice y/n?"
    choice = gets.chomp.to_str
    if choice == "y"
      roll1 = Dice.new
      roll1.show_dice
      roll1.show_sum
      result = @die1 + @die2
    else
      exit
    end
  end

  def result(guess, result)
    if result == guess
      puts "You Win!"
    else
      puts "Maybe Next Time"
    end
    puts "The result of the summed dice is #{result}"
    puts "Your guess was #{guess}"
    #create a module with play again y/n and selection
    make_guess
  end
end

#game1 = Dice_game.new
