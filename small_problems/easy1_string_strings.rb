def stringy(number)
  string_arr = []
  number.times do |num|
    if num.even?
      string_arr.push 1
    else
      string_arr.push 0
    end
  end
  string_arr.join
end

puts stringy(5)