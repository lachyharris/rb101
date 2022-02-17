def prompt(input)
  puts "==> #{input}"
end

bill = 0
loop do
  prompt("What is your bill? No dollar sign please.")
  bill = gets.chomp
  break if bill.to_i != 0
end

tip = 0
loop do
  prompt("What is the tip percentage? No percentage sign please.")
  tip = gets.chomp
  break if tip.to_i != 0
end

prompt("The tip is $#{(tip.to_f / 100) * bill.to_f}.")
prompt("The total is $#{(tip.to_f / 100) * bill.to_f + bill.to_f}.")