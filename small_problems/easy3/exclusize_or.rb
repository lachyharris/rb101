def xor?(input1, input2)
  if (input1 && !input2) || (!input1 && input2)
  end
end

p xor?(5.odd?, 4.even?)
p xor?(5.odd?, 4.odd?)