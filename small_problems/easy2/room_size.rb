SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCM = 929.03


puts "What is the length of your room in feet?"
length = gets.chomp.to_f

puts "What is the width of your room in feet?"
width = gets.chomp.to_f

sq_feet = length * width
sq_inches = (length * width) * SQFEET_TO_SQINCHES
sq_cm = (length * width) * SQFEET_TO_SQCM

puts "Your room is #{sq_feet} square feet, or #{sq_inches} square inches, or #{sq_cm} square centimeters."
