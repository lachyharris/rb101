def sum(num)
  total_sum = num.to_s.chars
  total_sum.map! { |num| num.to_i}.sum
end

p sum(123)