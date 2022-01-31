def bonus(salary, declaration)
  if declaration
    bonus = salary / 2
  else 
    bonus = 0
  end
end

puts bonus(49000, true)
puts bonus(4000, false)

# terniary operator useful here (bonus ? salaray / 2 : 0)