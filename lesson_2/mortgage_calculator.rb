def valid_name?(name)
  name != ''
end

def prompt(msg)
  puts "=> #{msg}"
end

def valid_num?(number)
  number != 0
end

prompt("Welcome, what is your name?")
name = ''
loan_amount = ''
annual_rate = ''
loan_duration = ''
loop do
  name = gets.chomp
  break if valid_name?(name)
  prompt("Please enter your name.")
end
loop do
  prompt("Okay #{name}, let's figure out your monthly repayments!")
  sleep(2)
  prompt("Alright, we will need to grab some values off you.")
  loop do
    prompt("Firstly, what's the total amount of the loan (no symbols/commas)")
    loan_amount = gets.chomp.to_i
    break if valid_num?(loan_amount)
    prompt("Sorry that's invalid.")
    prompt("Please enter the value of the loan in")
    puts "a whole number without any signs (including $ and ,)"
  end
  loop do
    prompt("What is the annual interest rate of the loan (without any signs)")
    annual_rate = gets.chomp.to_f
    break if valid_num?(annual_rate)
    prompt("Sorry that is invalid. Please enter without")
    puts "any signs except for a decimal if needed."
  end
  loop do
    prompt("What is the total loan duration? Please enter in years as a number")
    loan_duration = gets.chomp.to_i
    break if valid_num?(loan_duration)
    prompt("That is an invalid value, please enter a whole number only.")
  end
  monthly_rate = annual_rate / 12
  monthly_duration = loan_duration * 12
  monthly_payment = loan_amount * ((monthly_rate * 0.01) / (1 - (1 + (monthly_rate * 0.01))**(-monthly_duration)))

  prompt("Your total monthly payments would be $#{monthly_payment}")
  puts "for #{loan_duration} years."
  sleep(1)
  prompt("Would you like to calculate again? (type yes to start again)")
  restart = gets.chomp.downcase
  break if restart != 'yes'
end
prompt("Thanks for using the home or car loan calculator #{name}.")
