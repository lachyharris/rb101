def prompt(input)
  puts "==> #{input}"
end

prompt("What is your age?")
age = gets.chomp.to_i

prompt("At what age would you like to retire?")
retirement_age = gets.chomp.to_i

current_year = Time.now.year
retirement_year = retirement_age - age + 2022

prompt("It's #{current_year}. You will retire in #{retirement_year}!")
prompt("You only have #{retirement_age - age} years to go!")