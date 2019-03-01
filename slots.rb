


require 'colorize'
require_relative 'person'


class Slots


def initialize(person) #creating a variable to pass between classes
  @person = person
  game_menu
end


def game_menu
    puts "----Slot Machine-----".red
    # deposit money from wallet in order to play
    # ask user to insert $
    # pull handle
    puts "---Menu---".red
    puts "1) Play".cyan
    puts "2) Leave game".cyan
      play_or_not = gets.to_i
      case play_or_not
      when 1
          puts 'beginning game'
          get_started
      when 2
          puts 'leaving'
          exit
      else
          puts "Sorry invalid input"
          game_menu
      end
end


def get_started
    puts "---Slot Options---".red
    puts "1) Spin".cyan
    puts "2) Return to Slots Main Menu".cyan
    spin_or_leave = gets.to_i
    case spin_or_leave
      when 1
          spin_and_analyze
      when 2
          game_menu
      else
        puts "Invalid input, let's try that again".cyan
        get_started
    end
end

def spin_and_analyze
  puts '---------------------'.red
    @first_rand = rand(1..16)
    @second_rand = rand(1..16)
    @third_rand = rand(1..16)
    @fourth_rand = rand(1..16)
    @four_nums = [@first_rand, @second_rand, @third_rand, @fourth_rand]
    puts "   [#{@first_rand}] [#{@second_rand}] [#{@third_rand}] [#{@fourth_rand}]"
  puts '---------------------'.red
    if @first_rand == @second_rand && @first_rand == @third_rand && @first_rand == @fourth_rand
      puts "Four of a kind!".cyan
    elsif (@first_rand == @second_rand) && (@first_rand == @third_rand) || (@first_rand == @third_rand) && (@first_rand == @fourth_rand) || (@second_rand == @third_rand) && (@second_rand == @fourth_rand)
      puts "Three of a kind!".cyan
    elsif (@first_rand == @second_rand) || (@first_rand == @third_rand) || (@first_rand == @fourth_rand) || (@second_rand == @third_rand) || (@second_rand == @fourth_rand) || (@third_rand == @fourth_rand)
      puts "Two of a kind!".cyan
    else
      puts "No matches".cyan
    end
  puts 'Play again? (y/n)'.cyan
    play_again = gets.chomp.downcase
    case play_again
    when 'y'
      get_started
    when 'n'
      game_menu
    end
end
 



end

game_menu






