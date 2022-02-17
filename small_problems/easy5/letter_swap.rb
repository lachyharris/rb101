def swap(string)
  swap_arr = string.split(' ')
  new_arr = swap_arr.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  new_arr.join(' ')
end
