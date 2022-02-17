def palindrom_num?(num)
  reversed = 0
  number = num
  until num == 0
    last_digit = num % 10
    reversed = (reversed * 10) + last_digit
    num = num / 10
  end
  return true if reversed == number
end


palindrom_num?(454)