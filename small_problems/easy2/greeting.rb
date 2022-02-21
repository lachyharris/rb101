puts "What is your name?"
name = gets.chomp.capitalize

if /!/ =~ name
  name.upcase!.chop!
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end