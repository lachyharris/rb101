def s_l_s(input1, input2)
  if input1.length < input2.length
    return input1 + input2 + input1
  else
    return input2 + input1 + input2
  end
end