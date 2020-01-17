class CheckSyntax
  def valid_string?(str)
    left_stack = []
    right_stack = []
     derived_stack = []
    predicted_stack = []
    symbols = { '{' => '}', '[' => ']', '(' => ')' }
    right_symbols = { '}' => '{', ']' => '[', ')' => '(' }


    str.each_char do |c|
      left_stack << c if symbols.key?(c)
     right_stack << c if right_symbols.key?(c)
    end
    derived_stack << left_stack<<right_stack
    predicted_stack << left_stack

    buffer = left_stack.reverse
    buffer.each do |r|
      predicted_stack<<symbols[r]
    end
    if derived_stack.join == predicted_stack.join
      puts'valid'
    puts "derived stack: #{derived_stack.join}"
      puts "predicted stack: #{predicted_stack.join}"
      else
      puts'invalid'
      puts "derived stack: #{derived_stack.join}"
      puts "predicted stack: #{predicted_stack.join}"
    end
  end
end

CheckSyntax.new.valid_string?('{aaa}')
#CheckSyntax.new.valid_string?('{(aaa}')
#CheckSyntax.new.valid_string?('{(aaa}')
#CheckSyntax.new.valid_string?('{(aaa})')
