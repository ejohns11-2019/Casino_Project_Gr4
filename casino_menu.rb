
class Casino_menu
  require_relative 'Dice_game'
  require_relative 'Person'
  require_relative 'Blackjack'
  # require_relative 'slots'

  attr_accessor :person

  def initialize
    @person = create_person
  end

  def create_person
    puts "Welcome, type in your first name to start"
    name = gets.capitalize.chomp.to_str
    puts "How much money are you starting with?"
    money = gets.to_f
    @person = Person.new(name, money)
    # @person = {name: "#{@name}", money: @money}
    # puts "Welcome #{@name}, you're starting amount is $#{@money}"
    user_selection
  end

  def menu
    puts "Select from the following options"
    puts "1) Play Slots"
    puts "2) Play High/Low"
    puts "3) Play Dice Game"
    puts "4) Play Blackjack"
    puts "5) View Wallet"
    puts "6) Exit"
    puts "7) Switch players"
  end

  def user_selection
    menu
    choice = gets.to_i
    case choice
    when 1
      # Slots.new
    when 2
      # high_low
    when 3 #THIS PART IS WORKING!
      @person.place_bet
      Dice_game.new
      win_or_lose
    when 4
      @person.place_bet
      Blackjack.new
      win_or_lose
    when 5
      #Wallet.new????
    when 7
      Casino_menu.new
    else
      puts "Gamble Later"
      exit
    end
    user_selection
  end
end

def win_or_lose
  puts "Did you win the game y/n?"
  input = gets.chomp.to_str
  if input == 'y'
    @person.win_money
  else
    @person.lose_money
  end
end
#person.new - the person would contain the money/game info

game = Casino_menu.new
