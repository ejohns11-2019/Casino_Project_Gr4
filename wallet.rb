require_relative 'Person'

class Wallet

attr_accessor :person
#
def initialize(person)
  @person = person
  show_wallet
end

def show_wallet
  puts @person.money
  puts "Would you like to add more money y/n?"
  input = gets.chomp.to_str
  if input == 'y'
    add_money
  else
    exit #how do i get this to loop back to user_selection in casino_menu class
  end
end

def add_money
  puts "How much money would you like to add?"
  amount = gets.to_f
  @person.money += amount
  puts " You current Wallet amount is $#{@person.money}"
end

end
