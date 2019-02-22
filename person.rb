class Person
  attr_accessor :name, :money

  def initialize(name, money)
      name = @name
      money = @money

  end

  def user #user needs to be a hash
    puts "Welcome, type in your first name to start"
    name = gets.chomp.to_str
    user_money
    user = {name: name, money: money}
  end


  def user_money (name, money)
    puts "How much money are you starting with?"
    money = gets.to_f
    puts "#{user} starting amount is $#{money}"

  end

end
Person.new #creates a new user, can track their money and wins/losses
