word = ""
split_num = converter.split('')

ten_place = tens.each do |key, value|
  if converter[0] == key
    word.concat(value)
    single
  end

  single = single_digit.each do |key, value|
    if converter[0] == key
      word.concat(" " + value)
    end
  end

  if split_num.length >= 2
    ten_place
    single
  end

  if split_num.length < 2
    single
  end
end
word
end
end



# WORKING CODE
word = ""
split_num = converter.split('')
if split_num.length >= 2
  tens.each do |key, value|
    if converter[0] == key
      word.concat(value)
      single_digit.each do |key, value|
        if converter[0] == key
          word.concat(" " + value)
        end
      end
    end
  end
end
if split_num.length < 2
  single = single_digit.each do |key, value|
    if converter[0] == key
      word.concat(" " + value)
    end
  end
end
word
end
end
