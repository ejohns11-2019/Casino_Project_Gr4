


puts "----Slot Machine-----"
# pull handle
puts "Begin by pulling handle down"


# random numbers correspond with a 'symbol' eg lemon, cherry, bar
def spin
    @first_rand = rand(1..16)
    @second_rand = rand(1..16)
    @third_rand = rand(1..16)
    @fourth_rand = rand(1..16)
    @result = [@first_rand, @second_rand, @third_rand, @fourth_rand]
    puts @result
end


# two of a kind
def two_of_a_kind   
    if (@first_rand == @second_rand) || @first_rand == @third_rand || @first_rand == @fourth_rand
        puts 'two of a kind'
    elsif (@second_rand == @third_rand) || (@second_rand == @fourth_rand)
        puts 'two of a kind'
    end
    # add certain amount to wallet
    # put how much you won on that spin
end

# three of a kind
def three_of_a_kind
    if (@first_rand == @second_rand && @first_rand == @third_rand)
        puts 'three of a kind'
    elsif (@first_rand == @third_rand && @first_rand == @fourth_rand)
        puts 'three of a kind'
    elsif (@second_rand == @third_rand && @second_rand == @fourth_rand)
        puts 'three of a kind'
    end
    # add certain amount to wallet
    # put how much you won on that spin
end

# four of a kind
def four_of_a_kind
    if  @first_rand == @second_rand && @third_rand && @fourth_rand
        puts 'Four of a kind'
    end
    # add certain amount to wallet
    # put how much you won on that spin
end


def analyze_of_a_kind
    # if two three of a kind, can't also be two of a kind
    # will puts what you got (ex. two of a kind)
    # if four of a kind, can't also be three of a kind and two of a kind
end


spin
two_of_a_kind
three_of_a_kind
four_of_a_kind







