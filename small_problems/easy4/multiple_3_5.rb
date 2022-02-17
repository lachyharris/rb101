def multisum(number)
  sum_arr = []
  num = 1
  loop do
    if num % 3 == 0 || num % 5 == 0
      sum_arr << num
    end
    num += 1
    break if num == number
  end
  sum_arr.sum
end

puts multisum(7)