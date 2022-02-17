def ascii_value(string)
  sum = 0
  string.each_char do |char|
    sum += char.ord
  end
  sum
end

puts ascii_value('hello')