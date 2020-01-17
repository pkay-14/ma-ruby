class MathOp
  attr_reader :arg1, :arg2

  def initialize(arg1, arg2)
    @num1 = arg1.to_f
    @num2 =arg2.to_f

  end

  ops = {:add => '+', :subtract => '-', :divide =>'/', :multiply => '*'}
  ops.keys.each do |op|
  define_method(op){
    opr = ops[op]
    puts "#{@num1} #{opr} #{@num2} = #{@num1.send(opr, @num2)}"
  }
  end
end


operator = 'add'
math = MathOp.new(20, 7).send(operator)