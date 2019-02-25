class Dice

attr_accessor :guess, :result

 def initialize
   @guess= guess
   @result = result
   roll
 end

 def roll
   @die1 = 1 + rand(6)
   @die2 = 1 + rand(6)
 end

 def show_dice
   print "Die1: ", @die1, " Die2:", @die2
 end

 def show_sum
   print "Sum of dice is ", @die1 + @die2, ".\n"
   @result = @die1 + @die2
 end

 def make_guess
   puts "Guess the sum of rolling 2 dice"
   @guess = gets.to_i
   # puts "Roll the dice y/n?"
   # input = gets.chomp.to_str
   # if input == "y"
   #   roll_dice
   #   result(guess, result)
   # else
   #   exit
   # end

 end

 def show_result #(guess, result)
   if result == guess
     puts "You Win!"
   else
     puts "Maybe Next Time"
   end
   puts "The result of the summed dice is #{result}"
   puts "Your guess was #{guess}"
   #create a module with play again y/n and selection
   # make_guess
 end

end
