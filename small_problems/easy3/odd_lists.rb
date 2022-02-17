def oddlists(array)
  index = 1
  new_array = []
  while index < array.length
    new_array << array[index]
    index += 2
  end
  new_array
end

p oddlists([1, 2, 3, 4, 5])
