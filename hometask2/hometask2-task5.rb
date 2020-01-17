class TextColour
  attr_reader :text
  def initialize(text)
    @text = text
  end
  ColourSample = {black: 30, red: 31, green: 32, brown: 33,
                  blue: 34, magenta: 35, cyan: 36, gray: 37}

  ColourSample.keys.each do |col|
    define_method(col) {
      puts "\e[#{ColourSample[col]}m#{@text}\e[0m"}
  end
end

txt, colour = ARGV
TextColour.new(txt).send(colour)




