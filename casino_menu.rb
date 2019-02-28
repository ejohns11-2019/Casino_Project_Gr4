require_relative 'Dice_game'
require_relative 'Person'
require_relative 'Blackjack'
require_relative 'High_low'
# require_relative 'Slots'
require_relative 'Wallet'
require_relative 'all_players'

class Casino_menu

  attr_accessor :person #:players

  def initialize
    @person = create_person
    # @players = []
  end

  def create_person
    puts "Welcome, type in your first name to start"
    name = gets.capitalize.chomp.to_str
    puts "How much money are you starting with?"
    money = gets.to_f
    @person = Person.new(name, money)
    # @players = AllPlayers.new(@person)
    # @players.add_player(@person)
    # add_player(@person)
    user_selection
  end

  # def add_player(person)
  #   @players.push(person)
  #   puts @players
  # end

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
      @person.place_bet
      High_low.new(@person)
      win_or_lose
    when 3
      @person.place_bet
      Dice_game.new(@person)
      win_or_lose
    when 4
      @person.place_bet
      Blackjack.new(@person)
      win_or_lose
    when 5
      Wallet.new(@person)
    when 7
      Casino_menu.new
    else
      puts "Gamble Later"
      exit
    end
    user_selection
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
end

#person.new - the person would contain the money/game info

game = Casino_menu.new
