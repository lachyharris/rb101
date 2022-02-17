def prompt(input)
  puts "==> #{input}"
end

arr = []

prompt("Enter the 1st number:")
value1 = gets.chomp
arr << value1.to_i
prompt("Enter the 2nd number:")
value2 = gets.chomp
arr << value2.to_i
prompt("Enter the 3rd number:")
value3 = gets.chomp
arr << value3.to_i
prompt("Enter the 4th number:")
value4 = gets.chomp
arr << value4.to_i
prompt("Enter the 5th number:")
value5 = gets.chomp
arr << value5.to_i
prompt("Enter the 6th number:")
value6 = gets.chomp

if arr.any?(value6.to_i)
  puts "The number #{value6.to_i} appears in #{arr}."
else
  puts "The number #{value6.to_i} does not appear in #{arr}."
end

