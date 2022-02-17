def reverse_it(string)
  string_arr = string.split
  string_arr.each do |string|
    if string.length > 4
      string.reverse!
    end
  end
  string_arr.join(' ')
end

puts reverse_it("hello to everybody")