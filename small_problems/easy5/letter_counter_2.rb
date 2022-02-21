
def word_sizes(string)
  counts = Hash.new(0)
  new_word = []
  string.split.each do |word|
    new_word = word.delete('^A-za-z')
    counts[new_word.size] += 1
  end
  counts
end

puts word_sizes("Hello Jim, I'm happy to be here.")