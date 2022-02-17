puts "Please write one word or a phrase of words:"
words = gets.chomp

num_char = words.delete(' ').size

puts "There are #{num_char} characters in #{words}."