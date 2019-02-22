
class Casino_menu
  require_relative 'Dice_game'

  def initialize
    user_selection
  end

  def menu
    puts "Select from the following options"
    puts "1) Play Slots"
    puts "2) Play High/Low"
    puts "3) Play Dice Game"
    puts "4) View Wallet"
    puts "5) Exit"
  end

  def user_selection
    menu
    choice = gets.to_i
    case choice
    when 1
      slots
    when 2
      high_low
    when 3
      Dice_game.new
    when 4
      view_wallet
    when 5
      puts "Gamble Later!"
      exit
    end
    user_selection
  end
end

#person.new - the person would contain the money/game info

game = Casino_menu.new
