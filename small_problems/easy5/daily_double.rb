def crunch(string)
  crunched_string = []
  string_arr = string.split''
  string_arr.each do |letter|
    if crunched_string.last != letter
      crunched_string << letter
    end
  end
  crunched_string.join
end
