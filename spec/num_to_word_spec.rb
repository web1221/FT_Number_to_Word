require('rspec')
require('num_to_word')

describe('#num_to_word') do
  it('will convert a single digit integer into a word') do
    converter = Converter.new(5)
    expect(converter.num_to_word()).to(eq('five'))
  end
end
