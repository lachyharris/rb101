def palindrome?(input)
  input = input.downcase.delete('^a-z0-9')
  return true if input == input.reverse
end