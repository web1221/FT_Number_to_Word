class Converter
 def initialize(converter)
   @converter = converter
 end

 def converter
   @converter
 end

 def num_to_word
   single_digit = {
     1 => 'one',
     2 =>'two',
     3 =>'three',
     4 =>'four',
     5 =>'five',
     6 =>'six',
     7 =>'seven',
     8 =>'eight',
     9 =>'nine'
   }

   tens = {
     10 => 'ten',
     20 => 'twenty',
     30 => 'thirty',
     40 => 'forty',
     50 => 'fifty',
     60 => 'sixty',
     70 => 'seventy',
     80 => 'eighty',
     90 => 'ninety'
   }
   word = ""
   single_digit.each do |key, value|
    if converter == key
       word.concat(value)
    end
  end
  word
 end
end
