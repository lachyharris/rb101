def running_totals(array)
  running_totals_arr = []
  sum = 0
  array.each do |number|
    running_totals_arr << number + sum
    sum += number
  end
  running_totals_arr
end
