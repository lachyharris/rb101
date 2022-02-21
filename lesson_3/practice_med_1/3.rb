def factors(number)
  divisor = number
  factors = []
  loop do
    break if number <= 0
    unless divisor == 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
    end
  end
  factors
end


# Bonus 1: To ensure that there would be no remainder, or it wouldnt actually be a factor
# Bonus 2: So that the returned value of the method is the factors array