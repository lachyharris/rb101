def prompt(message)
  puts "=> #{message}"
end

def valid?(number)
  number.to_i != 0
end

number1 = ''
number2 = ''

prompt("Welcome to the calculator.")

loop do # whole loop
  loop do # first value loop
    prompt("Please input the first number:")
    num1 = gets.chomp
    number1 = num1.to_f
    break if valid?(num1)
    prompt("Sorry, that is an invalid number, input only a single number.")
  end
  loop do # second value loop
    prompt("Please input the second number:")
    num2 = gets.chomp
    number2 = num2.to_f
    break if valid?(num2)
    prompt("Sorry, that is an invalid number, input only a single number.")
  end
  operator_prompt = <<-MSG
    What operation would you like to perform?
    add
    subtract
    divide
    multiply
  MSG
  loop do # operator loop
    prompt(operator_prompt)
    operation = gets.chomp.downcase

    case operation
    when 'add'
      prompt("#{number1} + #{number2} = #{number1 + number2}")
    when 'subtract'
      prompt("#{number1} - #{number2} = #{number1 - number2}")
    when 'divide'
      prompt("#{number1} / #{number2} = #{number1 / number2}")
    when 'multiply'
      prompt("#{number1} * #{number2} = #{number1 * number2}")
    else
      prompt("Sorry, that is an invalid operation, please try again.")
      next
    end
    break
  end
  y_n = ''
  loop do # repeat loop
    prompt("Would you like to do another calculation? Please type yes or no.")
    y_n = gets.chomp.downcase
    break if y_n == ('yes') || ('no')
    prompt("Invalid answer, please type yes or no.")
  end
  break if y_n != 'yes'
end
