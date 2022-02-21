def leap_year?(year)
  if year => 1752
    if year % 4 == 0 && year % 100 != 0
      return true
    elsif year % 4 == 0 && year % 100 == 0 && year % 400 == 0
      return true
    else
      return false
    end
  else
    if year % 4 == 0
      return true
    else
      return false
    end
  end
end