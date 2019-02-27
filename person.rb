
class Person
  attr_accessor :name, :money

  def initialize(name, money)
      @name = name
      @money = money
  end

#should these be in the wallet class???
  def place_bet
    puts "how much would you like to bet on this game?"
    @bet = gets.to_f
    if @bet <= @money #&& >= 0
    puts "You are betting $#{@bet}"
    else
      puts "You do not have enough money to bet this amount"
      place_bet
    end
  end

  def win_money
    puts "Congratulations you won your bet of $#{@bet}"
    @money = @money + @bet
    puts "Your current amount of money is $#{@money}"
  end

  def lose_money
    puts "Bummer! You lost your bet of $#{@bet}"
    @money = @money - @bet
    puts "Your current amount of money is $#{@bet}"
  end

end

# test = Person.new("ella", 7)
# test.place_bet
 #creates a new user, can track their money and wins/losses
 #to track wins/losses - create a 3rd key/value pair in the user hash?
 #this pair would track wins???? @user[:wins] = @num_wins???
