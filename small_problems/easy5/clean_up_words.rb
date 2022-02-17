ALPHABET = ('a'..'z').to_a

def cleanup(string)
  cleaned_string = []
  string.chars.each do |str|
    if ALPHABET.include?(str)
      cleaned_string << str
    else
      cleaned_string << ' ' unless cleaned_string[-1] == ' '
    end
  end
  cleaned_string.join
end

puts cleanup("hey man, $50 is mine, %funny%%.")