puts "Welcome to the calculator."
loop do
  puts "Please input the first number:"
  number1 = gets.chomp.to_f
  puts "Please input the second number:"
  number2 = gets.chomp.to_f
  puts "What operation would you like to perform? (add, subtract, divide, multiply)?"
  operation = gets.chomp.downcase
  if operation == 'add'
    puts "#{number1} + #{number2} = #{number1 + number2}"
  elsif operation == 'subtract'
    puts "#{number1} - #{number2} = #{number1 - number2}"
  elsif operation == 'divide'
    puts "#{number1} / #{number2} = #{number1 / number2}"
  elsif operation == 'multiply' 
    puts "#{number1} * #{number2} = #{number1 * number2}"
  else 
    puts "Sorry, that is an invalid operation, please try again."
    next
  end
  y_n = ''
  loop do
    puts "Would you like to do another calculation? Please type yes or no."
    y_n = gets.chomp.downcase
    break if y_n == 'yes' || 'no' 
    puts "Invalid answer, please type yes or no."
  end
  break if y_n != 'yes'
end