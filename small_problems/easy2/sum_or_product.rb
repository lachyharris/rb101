def prompt(input)
  puts "==> #{input}"
end

prompt("Please enter an integer greater than 0.")
value = gets.chomp.to_i
loop do
  prompt("Enter 's' to compute the sum, or 'p' to compute the product.")
  operation = gets.chomp.downcase
  if operation == 's'
    total = (1..value).inject(:+)
    puts "The sum of the integers between 1 and #{value} is #{total}."
    break
  elsif operation == 'p'
    total = (1..value).inject(:*)
    puts "The product of the integers between 1 and #{value} is #{total}."
    break
  else
    puts "Invalid operation"
  end
end