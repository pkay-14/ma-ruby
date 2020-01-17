class EvenNumbers
  attr_accessor :given_array

  def initialize(*args)
    @given_array = args
  end
  def show_even
     @given_array.each { |e| p e if e.to_i.even? }
  end
end
evn = EvenNumbers.new(2, 3, 13.6,'104', 29, 111, 4, '40',10,'80')
evn.show_even
