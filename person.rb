@user
@name
@money
require_relative 'Wallet'

class Person

  def initialize
      create_user

  end

  def create_user #user needs to be a hash
    puts "Welcome, type in your first name to start"
    @name = gets.capitalize.chomp.to_str
    puts "How much money are you starting with?"
    @money = gets.to_f
    @user = {name: "#{@name}", money: @money}
    puts "Welcome #{@name}, you're starting amount is $#{@money}"
  end

end
# emma = Person.new
@user=Person.new

 #creates a new user, can track their money and wins/losses
