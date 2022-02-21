def palindrome?(input)
  return true if input == input.reverse
end

palindrome?('lol')