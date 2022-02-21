def what_century?(year)
  century = year.to_i / 100 + 1
  century -= 1 if year.to_i % 100 == 0
  last_digit = century % 10
  if [11, 12, 13].include?(century % 100)
    return century.to_s + 'th'
  end
  case last_digit
  when 1
    century.to_s + 'st'
  when 2
    century.to_s + 'nd'
  when 3
    century.to_s + 'rd'
  else
    century.to_s + 'th'
  end
end

puts what_century?(1205)
puts what_century?(1900)