class Converter
  def initialize(converter)
    @converter = converter
    @single_digit = {
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

    @tens = {
      1 => 'ten',
      2 => 'twenty',
      3 => 'thirty',
      4 => 'forty',
      5 => 'fifty',
      6 => 'sixty',
      7 => 'seventy',
      8 => 'eighty',
      9 => 'ninety'
    }

    @teens = {
      1 => 'eleven',
      2 => 'twelve',
      3 => 'thirteen',
      4 => 'fourteen',
      5 => 'fifteen',
      6 => 'sixteen',
      7 => 'seventeen',
      8 => 'eighteen',
      9 => 'nineteen'
    }

    @place_values = {
      2 => 'hundred',
      4 => 'hundred',
      6 => 'hundred',
      3 => 'thousand',
      6 => 'million',
      12 => 'trillion'
    }

    @split_num = @converter.digits().reverse()
    @word = ''
  end

  def single_digit
      @single_digit.each do |key, value|
        if @split_num[0] == key
          @word.concat(" " + value)
        end
      end
    @word
  end

  def tens_place
      @tens.each do |key, value|
        if @split_num[0] == key
          @word.concat(value)
          single_digit()
        end
      end
    @word
  end

  def num_to_word

    if @split_num.length >= 2
      self.tens_place
    elsif @split_num.length < 2
      self.single_digit
    end
    @word.strip
  end
end
