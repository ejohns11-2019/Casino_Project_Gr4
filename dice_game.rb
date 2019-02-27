require_relative 'Dice'
require_relative 'Person'
require 'colorize'

class Dice_game
  attr_accessor :person

  def initialize(person) #creating a variable to pass between classes
    @person = person
    play_dice
  end

  def play_dice
    roll1 = Dice.new
    roll1.make_guess
    puts "Roll the Dice y/n?"
    choice = gets.chomp.to_str
    if choice == "y"
      roll1.show_dice
      roll1.show_sum
      roll1.show_result
    else
      exit
    end
  end

end

# game1 = Dice_game.new
